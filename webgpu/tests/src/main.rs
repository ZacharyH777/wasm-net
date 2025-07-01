// Put a #[cfg(test)] here possibly

use clap::Parser;
use std::path::PathBuf;

#[cfg(feature = "primitives")]
mod test_primitives;

#[cfg(feature = "components")]
mod test_components;
mod state;

#[derive(Parser)]
struct Opts {
    /// Path to the component `.wasm` file
    #[clap(value_name = "COMPONENT_PATH")]
    path: PathBuf,
}

#[async_std::main]
async fn main() -> anyhow::Result<()> {
    let opts = Opts::parse();

    #[cfg(feature = "primitives")]
    test_primitives::run(opts.path).await?;

    #[cfg(feature = "components")]
    test_components::run(opts.path).await?;

    println!("\ntest has completed!");
    Ok(())
}