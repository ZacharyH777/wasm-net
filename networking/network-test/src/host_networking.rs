use anyhow::{anyhow, Result};
use bytes::Bytes;
use quinn::{Endpoint, SendStream, ServerConfig, TransportConfig};
use rustls::pki_types::{CertificateDer, PrivateKeyDer, PrivatePkcs8KeyDer};
use std::{fs, net::SocketAddr, path::PathBuf, sync::Arc, time::Duration};
use wasmtime::{
    component::{Component, Linker},
    Config, Engine, Store,
};

use clap::Parser;

use quinn::crypto::rustls::QuicServerConfig;
use wasmtime_wasi::p2::add_to_linker_async;

use crate::state::States;
use crate::protocols;


#[cfg(feature = "host-networking")]
mod bindings {
    wasmtime::component::bindgen!({
        path: "../server_core/wit",
        world: "server-rust",
        async: true
    });
}


#[derive(Parser, Debug)]
#[clap(name = "server")]
pub struct Opts {

    #[clap(value_name = "COMPONENT_PATH")]
    path: PathBuf,
    
    #[clap(long = "keylog")]
    keylog: bool,

    #[clap(short = 'k', long = "key", requires = "cert")]
    key: Option<PathBuf>,

    #[clap(short = 'c', long = "cert", requires = "key")]
    cert: Option<PathBuf>,

    #[clap(long = "stateless-retry")]
    stateless_retry: bool,

    #[clap(long = "listen", default_value = "[::1]:4433")]
    listen: SocketAddr,

    #[clap(long = "block")]
    block: Option<SocketAddr>,

    #[clap(long = "connection-limit")]
    connection_limit: Option<usize>,
}

enum WasmCommand {
    SpawnClient {
        stream: SendStream,
        client_id: u32,
    },
    HandleDatagram {
        client_id: u32,
        datagram: Bytes,
    },
}

#[derive(Clone)]
pub struct WasmWorker {
    tx: async_channel::Sender<WasmCommand>,
}

impl WasmWorker {
    fn new(tx: async_channel::Sender<WasmCommand>) -> Self {
        Self { tx }
    }
    pub async fn spawn_client(&self, stream: SendStream, client_id: u32) -> Result<()> {
        self.tx
            .send(WasmCommand::SpawnClient { stream, client_id })
            .await?;
        Ok(())
    }
    pub async fn handle_datagram(&self, client_id: u32, datagram: Bytes) -> Result<()> {
        self.tx
            .send(WasmCommand::HandleDatagram { client_id, datagram })
            .await?;
        Ok(())
    }
}

pub async fn run(options: Opts) -> Result<()> {
    let worker = spawn_wasm_worker(options.path).await?;
    let server_config = configure_server()?;

    println!("Server Starting...");
    let endpoint = Endpoint::server(server_config, options.listen)?;

    println!("Listening on {}", endpoint.local_addr()?);
    let mut client_id_counter = 0;

    let shutdown_signal = tokio::signal::ctrl_c();
    tokio::pin!(shutdown_signal);

    loop {
        tokio::select! {
            Some(conn) = endpoint.accept() => {
                println!("New client attempting to connect...");
                let worker_clone = worker.clone();
                let client_id = client_id_counter;
                client_id_counter += 1;

                tokio::spawn(async move {
                    if let Err(e) = handle_connection(conn, worker_clone, client_id).await {
                        eprintln!("[Client #{}] Connection error: {}", client_id, e);
                    }
                });
            },
            _ = &mut shutdown_signal => {
                println!("\nShutdown signal received. Closing server...");
                break;
            }
        }
    }

    endpoint.close(0u32.into(), b"server shutting down");
    endpoint.wait_idle().await;

    Ok(())
}

async fn spawn_wasm_worker(path: PathBuf) -> Result<WasmWorker> {
    let (tx, rx) = async_channel::unbounded();

    tokio::spawn(async move {

        let worker_logic = async {
            let mut config = Config::new();
            config.async_support(true);
            let engine = Engine::new(&config)?;
            let component = Component::from_file(&engine, &path)?;
            let mut linker = Linker::new(&engine);
            add_to_linker_async(&mut linker)?;
            let mut store = Store::new(&engine, States::new());
            let instance =
                bindings::ServerRust::instantiate_async(&mut store, &component, &linker).await?;
            let packet_manager = instance.component_networking_server_packet_manager();
            let packet_iface = instance.component_networking_server_packets().packet();

            while let Ok(command) = rx.recv().await {
                match command {
                    WasmCommand::SpawnClient { mut stream, client_id } => {
                        println!("Spawning client #{}", client_id);
                        if let Ok(packet) = packet_manager.call_spawn_client(&mut store, client_id).await {
                            if let Ok(bytes) = packet_iface.call_get_bytes(&mut store, packet).await {
                                if let Err(e) = stream.write_all(&bytes).await {
                                    eprintln!("Failed to send welcome packet: {}", e);
                                }
                                let _ = stream.finish();
                            }
                            let _ = packet.resource_drop_async(&mut store).await;
                        }
                    }

                    WasmCommand::HandleDatagram { client_id: _, datagram } => {
                        if let Ok(packet) = packet_iface.call_constructor(&mut store, &[0u8]).await {
                            let _ = packet_iface.call_set_bytes(&mut store, packet, &datagram).await;
                            // let _ = packet_manager.call_handle_packet(&mut store, client_id, packet).await;
                            let _ = packet.resource_drop_async(&mut store).await;
                        }
                    }
                }
            }
            Ok::<_, anyhow::Error>(())
        };

        // Now we execute the logic and print an error if it fails for any reason.
        if let Err(e) = worker_logic.await {
            eprintln!("[Wasm Worker] CRITICAL ERROR: The worker task has crashed: {}", e);
        }
    });

    Ok(WasmWorker::new(tx))
}

async fn handle_connection(connecting: quinn::Incoming, worker: WasmWorker, client_id: u32) -> Result<()> {
    let connection = connecting.await?;
    println!("[Client #{}] Connected from {}", client_id, connection.remote_address());

    let (mut send, mut recv) = connection.accept_bi().await?;
    let token = recv.read_to_end(1024).await?;
    if token == b"12345" {
        send.write_all(b"AUTH_OK").await?;
        send.finish()?;
        println!("[Client #{}] Authentication successful.", client_id);
    } else {
        send.write_all(b"AUTH_FAILED").await?;
        send.finish()?;
        return Err(anyhow!("Invalid authentication token"));
    }

    println!("[Client #{}] Opening stream to send welcome packet...", client_id);
    let send_stream = connection.open_uni().await?;
    worker.spawn_client(send_stream, client_id).await?;
    println!("[Client #{}] Welcome packet sent via Wasm worker.", client_id);

    println!("[Client #{}] Entering main game loop.", client_id);
    loop {
        tokio::select! {
            dgram = connection.read_datagram() => {
                match dgram {
                    Ok(bytes) => {
                        worker.handle_datagram(client_id, bytes).await?;
                    }
                    Err(quinn::ConnectionError::ApplicationClosed { .. }) => {
                        println!("[Client #{}] Connection closed.", client_id);
                        break;
                    }
                    Err(e) => return Err(e.into()),
                }
            },
            _ = tokio::time::sleep(Duration::from_millis(16)) => {
                 let game_state_update = b"server_state_update_with_sequence_number";
                connection.send_datagram(Bytes::from_static(game_state_update))?;
            }
        }
    }
    Ok(())
}

fn configure_server() -> Result<ServerConfig> {
    let (cert, key) = generate_and_load_cert()?;
    
    let mut crypto_config = rustls::ServerConfig::builder()
        .with_no_client_auth()
        .with_single_cert(vec![cert], key)?;

    
    const ALL_PROTOCOLS: &[&[u8]] = &[
        protocols::REALTIME_V1,
        protocols::TURN_BASED_V1,
        protocols::CHAT_V1,
        protocols::BROADCAST_MIC_V1,
        protocols::PROXIMITY_MIC_V1,
    ];


    crypto_config.alpn_protocols = ALL_PROTOCOLS.iter().map(|&p| p.to_vec()).collect();

    let mut server_config = quinn::ServerConfig::with_crypto(Arc::new(QuicServerConfig::try_from(crypto_config)?));
    let mut transport_config = TransportConfig::default();
    transport_config.datagram_receive_buffer_size(Some(65536));
    server_config.transport = Arc::new(transport_config);

    Ok(server_config)
}

fn generate_and_load_cert() -> Result<(CertificateDer<'static>, PrivateKeyDer<'static>)> {
    let dirs = directories_next::ProjectDirs::from("org", "game-server", "quinn-example").unwrap();
    let path = dirs.data_local_dir();
    let cert_path = path.join("cert.der");
    let key_path = path.join("key.der");

    let (cert, key) = match fs::read(&cert_path).and_then(|x| Ok((x, fs::read(&key_path)?))) {
        Ok((cert, key)) => (
            CertificateDer::from(cert),
            PrivateKeyDer::Pkcs8(PrivatePkcs8KeyDer::from(key)),
        ),
        Err(ref e) if e.kind() == std::io::ErrorKind::NotFound => {
            println!("Generating self-signed certificate...");
            let cert = rcgen::generate_simple_self_signed(vec!["localhost".into()])?;
            let key = PrivatePkcs8KeyDer::from(cert.signing_key.serialize_der());
            let cert_der = cert.cert.der().clone();
            fs::create_dir_all(path)?;
            fs::write(&cert_path, &cert_der)?;
            fs::write(&key_path, key.secret_pkcs8_der())?;
            (CertificateDer::from(cert_der), PrivateKeyDer::Pkcs8(key))
        }
        Err(e) => {
            return Err(anyhow!("failed to read certificate: {}", e));
        }
    };
    Ok((cert, key))
}
