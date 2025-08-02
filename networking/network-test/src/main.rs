use clap::Parser;
use std::path::PathBuf;

#[cfg(feature = "host-networking")]
mod host_networking;

#[cfg(feature = "client-networking")]
mod client_networking;

mod state;

#[derive(Parser, Debug)]
struct Opts {

    #[clap(value_name = "COMPONENT_PATH")]
    path: PathBuf,

    #[clap(short, long, default_value = "127.0.0.1:8081")]
    address: String,
}

#[async_std::main]
async fn main() -> anyhow::Result<()> {
    let opts = Opts::parse();

    #[cfg(feature = "host-networking")]
    host_networking::run(opts.path).await?;

    #[cfg(feature = "client-networking")]
    client_networking::run(opts.path, &opts.address).await?;

    println!("\n\nServer is running. Press ENTER to stop.\n\n");
    let mut input = String::new();
    std::io::stdin().read_line(&mut input)?;

    println!("Server is now shutting down!");
    Ok(())
}
