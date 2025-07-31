use std::path::PathBuf;
use wasmtime::{Engine, Store, Config};
use wasmtime::component::{Component, Linker};

use crate::state::States;

#[cfg(feature = "networking")]
mod bindings {
    wasmtime::component::bindgen!({
        path: "../networking_core/wit",
        world: "example",
        async: true
    });
}

pub async fn run(path: PathBuf) -> anyhow::Result<()> {
    let (mut store, instance) = setup_instance(&path).await?;

    test_networking(&mut store, &instance).await?;

    println!("\nnetworking tests passed!");
    Ok(())
}

async fn test_networking(mut store: &mut Store<States>,
    instance: &bindings::Example,) -> anyhow::Result<()> {
     let result = instance
        .call_hello_world(&mut store)
        .await?;

    println!("component says: {}", result);
    Ok(())
}

async fn setup_instance(path: &PathBuf) -> anyhow::Result<(
    Store<States>, bindings::Example
)> {
    let mut config = Config::new();
    config.async_support(true);
    let engine = Engine::new(&config)?;
    let component = Component::from_file(&engine, path)?;
    let mut linker = Linker::new(&engine);
    wasmtime_wasi::p2::add_to_linker_async(&mut linker)?;

    let mut store = Store::new(&engine, States::new());
    let instance = bindings::Example::instantiate_async(&mut store, &component, &mut linker).await?;
    Ok((store, instance))
}