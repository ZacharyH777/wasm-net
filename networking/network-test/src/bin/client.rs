use clap::Parser;

use rustls::crypto::CryptoProvider;
use rust_networking::client_networking;

#[tokio::main]
async fn main() -> anyhow::Result<()> {
    let opts = client_networking::Opts::parse();

    let _ = CryptoProvider::install_default(rustls::crypto::ring::default_provider());
    client_networking::run(opts).await?;

    println!("\n\nServer is running. Press ENTER to stop.\n\n");
    let mut input = String::new();
    std::io::stdin().read_line(&mut input)?;

    println!("Client done.");
    Ok(())
}
