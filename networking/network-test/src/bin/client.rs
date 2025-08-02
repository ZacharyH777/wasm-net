use clap::Parser;
use std::path::PathBuf;

use Rust_Networking::client_networking;
use Rust_Networking::state;

#[derive(Parser, Debug)]
struct Opts {
    #[clap(value_name = "COMPONENT_PATH", index = 1)]
    path: PathBuf,

    #[clap(value_name = "ADDRESS", index = 2, default_value = "127.0.0.1:8081")]
    address: String,
}

#[async_std::main]
async fn main() -> anyhow::Result<()> {
    let opts = Opts::parse();

    client_networking::run(opts.path, &opts.address).await?;

    println!("\n\nServer is running. Press ENTER to stop.\n\n");
    let mut input = String::new();
    std::io::stdin().read_line(&mut input)?;

    println!("Client done.");
    Ok(())
}
