// This code is similar to the examples/example-host path:
// https://github.com/bytecodealliance/component-docs/tree/main/component-model

use std::path::PathBuf;
use wasmtime::{Engine, Store, Config};
use wasmtime::component::{Component, Linker};

use crate::state::States;

#[cfg(feature = "primitives")]
mod bindings {
    wasmtime::component::bindgen!({
        path: "../wit/deps/math-vec",
        world: "types",
        async: true
    });
}

pub async fn run(path: PathBuf) -> anyhow::Result<()> {
    let (mut store, instance) = setup_instance(&path).await?;

    test_vec2_group(&mut store, &instance).await?;
    test_vec3_group(&mut store, &instance).await?;
    test_vec4_group(&mut store, &instance).await?;

    println!("\nprimitives tests passed!");
    Ok(())
}

async fn test_vec2_group(mut store: &mut Store<States>,
    instance: &bindings::Types,) -> anyhow::Result<()> {
    let vec2 = instance.math_vec_vec2();

    assert_eq!(vec2.call_float32(&mut store).await?.x, 0.0);
    assert_eq!(vec2.call_float64(&mut store).await?.x, 0.0);
    assert_eq!(vec2.call_int8(&mut store).await?.x, 0);
    assert_eq!(vec2.call_int16(&mut store).await?.x, 0);
    assert_eq!(vec2.call_int32(&mut store).await?.x, 0);
    assert_eq!(vec2.call_int64(&mut store).await?.x, 0);
    assert_eq!(vec2.call_uint8(&mut store).await?.x, 0);
    assert_eq!(vec2.call_uint16(&mut store).await?.x, 0);
    assert_eq!(vec2.call_uint32(&mut store).await?.x, 0);
    assert_eq!(vec2.call_uint64(&mut store).await?.x, 0);

    println!("Vec2 tests passed!");
    Ok(())
}

async fn test_vec3_group(mut store: &mut Store<States>,
    instance: &bindings::Types,) -> anyhow::Result<()> {
    let vec3 = instance.math_vec_vec3();

    assert_eq!(vec3.call_float32(&mut store).await?.z, 0.0);
    assert_eq!(vec3.call_float64(&mut store).await?.z, 0.0);
    assert_eq!(vec3.call_int8(&mut store).await?.z, 0);
    assert_eq!(vec3.call_int16(&mut store).await?.z, 0);
    assert_eq!(vec3.call_int32(&mut store).await?.z, 0);
    assert_eq!(vec3.call_int64(&mut store).await?.z, 0);
    assert_eq!(vec3.call_uint8(&mut store).await?.z, 0);
    assert_eq!(vec3.call_uint16(&mut store).await?.z, 0);
    assert_eq!(vec3.call_uint32(&mut store).await?.z, 0);
    assert_eq!(vec3.call_uint64(&mut store).await?.z, 0);

    println!("Vec3 tests passed!");
    Ok(())
}

async fn test_vec4_group(mut store: &mut Store<States>,
    instance: &bindings::Types,) -> anyhow::Result<()> {
    let vec4 = instance.math_vec_vec4();

    assert_eq!(vec4.call_float32(&mut store).await?.w, 0.0);
    assert_eq!(vec4.call_float64(&mut store).await?.w, 0.0);
    assert_eq!(vec4.call_int8(&mut store).await?.w, 0);
    assert_eq!(vec4.call_int16(&mut store).await?.w, 0);
    assert_eq!(vec4.call_int32(&mut store).await?.w, 0);
    assert_eq!(vec4.call_int64(&mut store).await?.w, 0);
    assert_eq!(vec4.call_uint8(&mut store).await?.w, 0);
    assert_eq!(vec4.call_uint16(&mut store).await?.w, 0);
    assert_eq!(vec4.call_uint32(&mut store).await?.w, 0);
    assert_eq!(vec4.call_uint64(&mut store).await?.w, 0);

    println!("Vec4 tests passed!");
    Ok(())
}

async fn setup_instance(path: &PathBuf) -> anyhow::Result<(
    Store<States>, bindings::Types
)> {
    let mut config = Config::new();
    config.async_support(true);
    let engine = Engine::new(&config)?;
    let component = Component::from_file(&engine, path)?;
    let mut linker = Linker::new(&engine);
    wasmtime_wasi::p2::add_to_linker_async(&mut linker)?;

    let mut store = Store::new(&engine, States::new());
    let instance = bindings::Types::instantiate_async(&mut store, &component, &mut linker).await?;
    Ok((store, instance))
}
