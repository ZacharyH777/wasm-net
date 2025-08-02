use std::path::PathBuf;

use async_std::net::{TcpListener, TcpStream};
use async_std::prelude::*;
use async_channel::{unbounded, Sender, Receiver};

use wasmtime::{Config, Engine, Store};
use wasmtime::component::{Component, Linker};

use crate::state::States;

#[cfg(feature = "host-networking")]
mod bindings {
    wasmtime::component::bindgen!({
        path: "../server_core/wit",
        world: "server-rust",
        async: true
    });
}

enum WasmCommand {
    SpawnClient {
        stream: TcpStream,
        client_id: u32,
    },
}

// Abstraction of tasks to allow 
// more generic command control
#[derive(Clone)]
pub struct WasmWorker {
    tx: Sender<WasmCommand>,
}

impl WasmWorker {
    fn new(tx: Sender<WasmCommand>) -> Self {
        Self { tx }
    }

    // We are not handling handle task quite yet on server
    // I need to set up a deticated thread for listening to tasks
    // Before I attempt to move on.
    pub async fn spawn_client(&self, stream: TcpStream, client_id: u32) -> anyhow::Result<()> {
        self.tx.send(WasmCommand::SpawnClient { stream, client_id }).await?;
        Ok(())
    }
}

pub async fn run(path: PathBuf) -> anyhow::Result<()> {
    let worker = spawn_wasm_worker(path).await?;

    async_std::task::spawn(run_tcp_server(worker));

    Ok(())
}

// The wasm worker allows multiple async task to connect to one store
// Allowing for manipulaiton of the store without were about tasks interrupting each other
async fn spawn_wasm_worker(path: PathBuf) -> anyhow::Result<WasmWorker> {
    let (tx, rx) = unbounded::<WasmCommand>(); // Split the thread into two routes

    async_std::task::spawn(async move {
        let mut config = Config::new();
        config.async_support(true);

        let engine = Engine::new(&config).unwrap();
        let component = Component::from_file(&engine, &path).unwrap();
        let mut linker = Linker::new(&engine);
        wasmtime_wasi::p2::add_to_linker_async(&mut linker).unwrap();

        let mut store = Store::new(&engine, States::new());
        let instance = bindings::ServerRust::instantiate_async(&mut store, &component, &mut linker)
            .await
            .unwrap();

        let packet_manager = instance.component_networking_server_packet_manager();
        let packet_iface = instance.component_networking_server_packets().packet();

        while let Ok(cmd) = rx.recv().await {
            match cmd {
                WasmCommand::SpawnClient { mut stream, client_id } => {
                    if let Ok(packet) = packet_manager.call_spawn_client(&mut store, client_id).await {
                        if let Ok(bytes) = packet_iface.call_get_bytes(&mut store, packet).await {
                            let _ = stream.write_all(&bytes).await;
                        }
                        // We are borrowing the resource from the store
                        // This means we need to delete it ourselves
                        // We move the usable data to another resource before this
                        let _ = packet.resource_drop_async(&mut store);
                    }
                }
            }

            async_std::task::sleep(std::time::Duration::from_millis(0)).await;
        }
    });

    Ok(WasmWorker::new(tx))
}

pub async fn run_tcp_server(worker: WasmWorker) -> anyhow::Result<()> {
    println!("Server listening on 127.0.0.1:8081...");
    let listener = TcpListener::bind("127.0.0.1:8081").await?;

    let mut client_id: u32 = 1;

    loop {
        let (stream, addr) = listener.accept().await?;
        println!("Client #{} connected from {}", client_id, addr);

        // this clone lets the main task to continue listening while this
        // async task works on fullfilling the clients join request.
        let worker_clone = worker.clone();
        let id = client_id;

        async_std::task::spawn(async move {
            if let Err(e) = worker_clone.spawn_client(stream, id).await {
                eprintln!("Failed to handle client {}: {:?}", id, e);
            }
        });

        client_id += 1;
    }
}