/*
* Trying to learn how servers work in rust. Messing around a little, let me
* know, if there is a standard for this!
*
*/

use std::path::PathBuf;

use async_std::net::{TcpListener, TcpStream};
use async_std::prelude::*;
use async_channel::{unbounded, Sender};

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

// We want to hand async
enum WasmCommand {
    SpawnClient {
        stream: TcpStream,
        client_id: u32,
    },
}

#[derive(Clone)]
pub struct WasmWorker {
    tx: Sender<WasmCommand>,
}

// We want a worker to be able to switch between async. What we have to do is
// make sure that the store is not shared access by tasks. Only one task is
// allowed to use the store at the time. 

// Doesn't feel like this is optimized but the goal is to essentially have 
// it work like a "mutex" in a sense. So that tasks cannot run until sore is used.
impl WasmWorker {
    fn new(tx: Sender<WasmCommand>) -> Self {
        Self { tx }
    }

    async fn spawn_client(&self, stream: TcpStream, client_id: u32) -> anyhow::Result<()> {
        self.tx
            .send(WasmCommand::SpawnClient { stream, client_id })
            .await?;
        Ok(())
    }
}

pub async fn run(path: PathBuf) -> anyhow::Result<()> {
    let worker = spawn_wasm_worker(path).await?;
    run_tcp_server(worker).await?;
    Ok(())
}

async fn spawn_wasm_worker(path: PathBuf) -> anyhow::Result<WasmWorker> {
    // Allows us to yield until the a user joins the server
    let (tx, rx) = unbounded::<WasmCommand>(); 

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
        /*
        * We have to determine why we are wanting to use the store.
        *
        */
        while let Ok(cmd) = rx.recv().await {
            match cmd {
                WasmCommand::SpawnClient { mut stream, client_id } => {
                    match instance.call_spawn_client(&mut store, client_id).await {
                        Ok(response) => {
                            if let Err(e) = stream.write_all(&response).await {
                                eprintln!("Error sending response to client {}: {:?}", client_id, e);
                            }
                        }
                        Err(e) => {
                            eprintln!("WASM error (client {}): {:?}", client_id, e);
                        }
                    }
                }
            }
        }
    });

    Ok(WasmWorker::new(tx))
}

pub async fn run_tcp_server(worker: WasmWorker) -> anyhow::Result<()> {
    println!("Starting server...");
    async_std::task::spawn(async move {
        let listener = TcpListener::bind("127.0.0.1:8081").await.unwrap();
        println!("TCP server listening on 127.0.0.1:8081");

        let mut client_id: u32 = 1;

        loop {
            match listener.accept().await {
                Ok((stream, addr)) => {
                    println!("Client #{} connected from {}", client_id, addr);

                    let worker_clone = worker.clone();
                    let id = client_id;
                    
                    async_std::task::spawn(async move {
                        if let Err(e) = worker_clone.spawn_client(stream, id).await {
                            eprintln!("Failed to handle client {}: {:?}", id, e);
                        }
                    });

                    client_id += 1;
                }
                Err(e) => {
                    eprintln!("Failed to accept connection: {:?}", e);
                }
            }
        }
    });

    Ok(())
}
