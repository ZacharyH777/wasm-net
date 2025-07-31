// Put a #[cfg(test)] here possibly

use clap::Parser;
use std::path::PathBuf;

// --feature primitives
#[cfg(feature = "networking")]
mod test_networking;

mod state;

#[derive(Parser)]
struct Opts {
    #[clap(value_name = "COMPONENT_PATH")]
    path: PathBuf,
}

#[async_std::main]
async fn main() -> anyhow::Result<()> {
    let opts = Opts::parse();

    #[cfg(feature = "networking")]
    test_networking::run(opts.path).await?;


    println!("\nTest has completed!");
    Ok(())
}