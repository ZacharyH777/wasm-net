
use std::path::PathBuf;
use wasmtime::{Config, Engine, Store};
use wasmtime::component::{Component, Linker};

use crate::state::States;


#[cfg(feature = "components")]
mod bindings {

    wasmtime::component::bindgen!({
        path: "../wit/deps/engine-components",
        world: "engine:components/components",
        async: true
    });
}

pub async fn run(path: PathBuf) -> anyhow::Result<()> {
    let (mut store, instance) = setup_instance(&path).await?;

    test_transform_group(&mut store, &instance).await?;

    println!("\ncomponents tests passed!");
    Ok(())
}

async fn setup_instance(path: &PathBuf) -> anyhow::Result<(Store<States>, bindings::Components)> {
    let mut config = Config::new();
    config.async_support(true);
    let engine = Engine::new(&config)?;
    let component = Component::from_file(&engine, path)?;
    let mut linker = Linker::new(&engine);
    wasmtime_wasi::p2::add_to_linker_async(&mut linker)?;

    let mut store = Store::new(&engine, States::new());
    let instance = bindings::Components::instantiate_async(&mut store, &component, &mut linker).await?;
    Ok((store, instance))
}

async fn test_transform_group(
    store: &mut Store<States>,
    instance: &bindings::Components,
) -> anyhow::Result<()> {
    let transform_api = instance.engine_components_transform();

    let t = transform_api.call_build3d(store).await?;

    let position = t.position;
    assert_eq!(position.x, 0.0);

    let rotation = t.rotation;
    assert_eq!(rotation.x, 0.0);

    let scale = t.scale;
    assert_eq!(scale.x, 0.0);

    let quaternion = t.quaterion;
    assert_eq!(quaternion.x, 0.0);

    println!("Transform tests passed!");
    Ok(())
}