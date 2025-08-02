use std::path::PathBuf;

use async_std::net::TcpStream;
use async_std::prelude::*;
use async_channel::{unbounded, Sender, Receiver};

use wasmtime::{Config, Engine, Store};
use wasmtime::component::{Component, Linker};

use crate::state::States;

// We only want to generate this if we are using the client
// Similar one in host
#[cfg(feature = "client-networking")]
mod bindings {
    wasmtime::component::bindgen!({
        path: "../client_core/wit",
        world: "client-rust",
        async: true
    });
}

enum WasmCommand {
    HandleStream {
        stream: TcpStream,
    },
}

#[derive(Clone)]
pub struct WasmClientWorker {
    tx: Sender<WasmCommand>,
}

impl WasmClientWorker {
    fn new(tx: Sender<WasmCommand>) -> Self {
        Self { tx }
    }

    pub async fn handle_stream(&self, stream: TcpStream) -> anyhow::Result<()> {
        self.tx.send(WasmCommand::HandleStream { stream }).await?;
        Ok(())
    }
}

pub async fn run(path: PathBuf, server_addr: &str) -> anyhow::Result<()> {
    let worker = spawn_wasm_client(path).await?;

    let stream = TcpStream::connect(server_addr).await?;
    println!("Connected to server at {}", server_addr);

    worker.handle_stream(stream).await?;

    Ok(())
}

// This client store thing should be shared between host and client running
// Maybe make it its own crate?
async fn spawn_wasm_client(path: PathBuf) -> anyhow::Result<WasmClientWorker> {
    let (tx, rx) = unbounded::<WasmCommand>();

    async_std::task::spawn(async move {
        let mut config = Config::new();
        config.async_support(true);

        let engine = Engine::new(&config).unwrap();
        let component = Component::from_file(&engine, &path).unwrap();
        let mut linker = Linker::new(&engine);
        wasmtime_wasi::p2::add_to_linker_async(&mut linker).unwrap();

        let mut store = Store::new(&engine, States::new());
        let instance = bindings::ClientRust::instantiate_async(&mut store, &component, &mut linker)
            .await
            .unwrap();

        let packet_manager = instance.component_networking_client_packet_manager();
        let packet_iface = instance.component_networking_client_packets().packet();

        while let Ok(cmd) = rx.recv().await {
            match cmd {
                WasmCommand::HandleStream { mut stream } => {
                    let mut buffer = vec![0u8; 4096];
                    match stream.read(&mut buffer).await {
                        Ok(n) if n > 0 => {
                            buffer.truncate(n);

                            let packet_result = packet_iface.call_constructor(&mut store, &[0u8]).await;

                            match packet_result {
                                Ok(packet_resource) => {
                                    let _ = packet_iface
                                        .call_set_bytes(&mut store, packet_resource, &buffer)
                                        .await;

                                    let _ = packet_manager
                                        .call_handle_packet(&mut store, packet_resource)
                                        .await;

                                    let _ = packet_resource.resource_drop_async(&mut store);
                                }
                                Err(e) => {
                                    eprintln!("Failed to create empty packet: {e}");
                                }
                            }
                        }
                        Ok(_) => {
                            println!("Connection closed by server.");
                            break;
                        }
                        Err(e) => {
                            eprintln!("Error reading from stream: {e}");
                        }
                    }
                }
            }

            async_std::task::sleep(std::time::Duration::from_millis(0)).await;
        }
    });
    

    Ok(WasmClientWorker::new(tx))
}