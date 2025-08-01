// Put a #[cfg(test)] here possibly

use clap::Parser;
use std::path::PathBuf;

#[cfg(feature = "host-networking")]
mod host_networking;

mod state;

#[derive(Parser)]
struct Opts {
    #[clap(value_name = "COMPONENT_PATH")]
    path: PathBuf,
}

#[async_std::main]
async fn main() -> anyhow::Result<()> {
    let opts = Opts::parse();

    #[cfg(feature = "host-networking")]
    host_networking::run(opts.path).await?;

    println!("\n\nServer is running. Press ENTER to stop.\n\n");
    let mut input = String::new();
    std::io::stdin().read_line(&mut input)?;

    println!("Server is now shutting down!");
    Ok(())
}