// Put a #[cfg(test)] here possibly

use clap::Parser;
use std::path::PathBuf;


mod async_vec_tests;
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
    let path = opts.path;

    futures::try_join!(
        async_vec_tests::test_vec2_group(path.clone()),
        async_vec_tests::test_vec3_group(path.clone()),
        async_vec_tests::test_vec4_group(path)
    )?;

    println!("\nvec2, vec3, and vec4 tests passed!");
    Ok(())
}