
use rust_networking::host_networking;
use rustls::crypto::CryptoProvider;
use clap::Parser;

#[tokio::main]
async fn main() -> anyhow::Result<()> {
    let opts = host_networking::Opts::parse();

    let _ = CryptoProvider::install_default(rustls::crypto::ring::default_provider());
    host_networking::run(opts).await?;

    println!("Server is now shutting down!");
    Ok(())
}
