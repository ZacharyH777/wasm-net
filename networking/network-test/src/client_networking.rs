use anyhow::{anyhow, Result};
use bytes::Bytes;
use clap::Parser;
use quinn::{ClientConfig, RecvStream};
use rustls::pki_types::CertificateDer;

use url::Url;

use std::{
    fs,
    net::{SocketAddr, ToSocketAddrs},
    path::PathBuf,
    sync::Arc,
    time::Duration,
};
use wasmtime::{
    component::{Component, Linker},
    Config, Engine, Store,
};

use crate::protocols;
use quinn::crypto::rustls::QuicClientConfig;

use crate::state::States;
use wasmtime_wasi::p2::add_to_linker_async;

#[cfg(feature = "client-networking")]
mod bindings {
    wasmtime::component::bindgen!({
        path: "../client_core/wit",
        world: "client-rust",
        async: true
    });
}

#[derive(Parser, Debug)]
#[clap(name = "client")]
pub struct Opts {
    
    #[clap(value_name = "COMPONENT_PATH")]
    wasm: PathBuf,

    url: Url,

    #[clap(long)]
    keylog: bool,

    #[clap(long = "ca")]
    ca: Option<PathBuf>,

    #[clap(long, default_value = "[::]:0")]
    bind: SocketAddr,
}

enum WasmCommand {
    HandleStream { stream: RecvStream },
    HandleDatagram { datagram: Bytes },
}

#[derive(Clone)]
pub struct WasmClientWorker {
    tx: async_channel::Sender<WasmCommand>,
}

impl WasmClientWorker {
    fn new(tx: async_channel::Sender<WasmCommand>) -> Self {
        Self { tx }
    }
    pub async fn handle_stream(&self, stream: RecvStream) -> Result<()> {
        self.tx.send(WasmCommand::HandleStream { stream }).await?;
        Ok(())
    }
    pub async fn handle_datagram(&self, datagram: Bytes) -> Result<()> {
        self.tx
            .send(WasmCommand::HandleDatagram { datagram })
            .await?;
        Ok(())
    }
}

pub async fn run(options: Opts) -> Result<()> {
    let worker = spawn_wasm_client(options.wasm).await?;
    let url = options.url.clone();

    let url_host = strip_ipv6_brackets(url.host_str().unwrap());

    let remote = (url_host, url.port().unwrap_or(4433))
        .to_socket_addrs()?
        .next()
        .ok_or_else(|| anyhow!("Could not resolve address"))?;

    let mut roots = rustls::RootCertStore::empty();
    if let Some(ca_path) = options.ca {
        roots.add(CertificateDer::from(fs::read(ca_path)?))?;
    } else {

        let dirs = directories_next::ProjectDirs::from("org", "game-server", "quinn-example").unwrap();
        
        
        match fs::read(dirs.data_local_dir().join("cert.der")) {

            Ok(cert) => {
                roots.add(CertificateDer::from(cert))?;
            }
            Err(ref e) if e.kind() == std::io::ErrorKind::NotFound => {
                return Err(anyhow!("Server certificate not found. Please run the server once to generate it."));
            }
            Err(e) => {
                return Err(anyhow!("Failed to open local server certificate; {}", e));
            }

        }

    }

    let mut client_crypto = rustls::ClientConfig::builder()
        .with_root_certificates(roots)
        .with_no_client_auth();

    const ALL_PROTOCOLS: &[&[u8]] = &[
        protocols::REALTIME_V1,
        protocols::TURN_BASED_V1,
        protocols::CHAT_V1,
        protocols::BROADCAST_MIC_V1,
        protocols::PROXIMITY_MIC_V1,
    ];

    client_crypto.alpn_protocols = ALL_PROTOCOLS.iter().map(|&p| p.to_vec()).collect();

    if options.keylog {
        client_crypto.key_log = Arc::new(rustls::KeyLogFile::new());
    }

    let client_config = ClientConfig::new(Arc::new(QuicClientConfig::try_from(client_crypto)?));
    let mut endpoint = quinn::Endpoint::client(options.bind)?;
    endpoint.set_default_client_config(client_config);

    println!("Attempting to connect to {}...", remote);
    let connection = endpoint
        .connect(remote, url_host)?
        .await
        .map_err(|e| anyhow!("Failed to connect: {}", e))?;
    println!("Server is connected!");

    println!("\nOpening stream for authentication...");
    let (mut send, mut recv) = connection.open_bi().await?;
    let auth_token = b"fake_session_token_for_Player123";
    send.write_all(auth_token).await?;
    send.finish()?;

    let response = recv.read_to_end(1024).await?;
    if response != b"AUTH_OK" {
        return Err(anyhow!("Server rejected authentication."));
    }
    println!("Authentication successful!");

    println!("\nWaiting for server to send initial game state...");
    let (_welcome_send, welcome_recv) = connection.accept_bi().await?;
    
    println!("Received welcome stream. Passing to Wasm worker for processing...");
    worker.handle_stream(welcome_recv).await?;

    println!("\nStarting main game loop...");
    loop {
        tokio::select! {
            dgram = connection.read_datagram() => {
                match dgram {
                    Ok(bytes) => {
                        if let Err(e) = worker.handle_datagram(bytes).await {
                            eprintln!("Failed to handle datagram in Wasm worker: {}", e);
                        }
                    }
                    Err(quinn::ConnectionError::ApplicationClosed { .. }) => {
                        println!("Connection closed by server.");
                        break;
                    }
                    Err(e) => {
                        eprintln!("Error reading datagram: {}", e);
                        break;
                    }
                }
            },
            _ = tokio::time::sleep(Duration::from_millis(16)) => {
                let player_input = b"input_packet_with_sequence_number";
                // Corrected: Use Bytes::from_static for a static byte literal.
                if let Err(e) = connection.send_datagram(Bytes::from_static(player_input)) {
                    eprintln!("Failed to send input datagram: {}", e);
                }
            }
        }
    }

    endpoint.wait_idle().await;
    Ok(())
}

async fn spawn_wasm_client(path: PathBuf) -> Result<WasmClientWorker> {
    let (tx, rx) = async_channel::unbounded();
    tokio::spawn(async move {
        let mut config = Config::new();
        config.async_support(true);
        let engine = Engine::new(&config)?;
        let component = Component::from_file(&engine, &path)?;
        let mut linker = Linker::new(&engine);
        add_to_linker_async(&mut linker)?;
        let mut store = Store::new(&engine, States::new());
        let instance = bindings::ClientRust::instantiate_async(&mut store, &component, &linker).await?;
        let packet_manager = instance.component_networking_client_packet_manager();
        let packet_iface = instance.component_networking_client_packets().packet();
        while let Ok(command) = rx.recv().await {
            let data_buffer = match command {
                WasmCommand::HandleStream { mut stream } => {
                        match stream.read_to_end(65536).await {
                            Ok(data) => Some(data),
                            Err(e) => {
                                eprintln!("Stream read error: {}", e);
                            None
                        }
                    }
                }
                WasmCommand::HandleDatagram { datagram } => {
                    Some(datagram.to_vec())
                }
            };
            if let Some(buffer) = data_buffer {
                if let Ok(packet) = packet_iface.call_constructor(&mut store, &[0u8]).await {
                    let _ = packet_iface.call_set_bytes(&mut store, packet, &buffer).await;
                    let _ = packet_manager.call_handle_packet(&mut store, packet).await;
                    let _ = packet.resource_drop_async(&mut store).await;
                } else {
                    eprintln!("Packet construction failed in Wasm worker");
                }
            }
        }
        Ok::<_, anyhow::Error>(())
    });
    Ok(WasmClientWorker::new(tx))
}

fn strip_ipv6_brackets(host: &str) -> &str {
    host.strip_prefix('[').and_then(|h| h.strip_suffix(']')).unwrap_or(host)
}