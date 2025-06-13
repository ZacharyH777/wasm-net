use anyhow::Result;
use wasmtime::component::*;
use wasmtime::*;
use wasm_component_trampoline::component::*;
use std::path::Path;

mod bindings {
    wit_bindgen::generate!({
        path: "wit/addr.wit",
        world: "add-api"
    });
}

#[test]
fn test_add_api() -> Result<()> {
    let engine = Engine::new(Config::new().wasm_component_model(true))?;

    // Load the built component (after you've packaged it)
    let component = Component::from_file(
        &engine,
        Path::new("target/component.wasm"),
    )?;

    let mut store = Store::new(&engine, ());

    // Instantiate WIT bindings through trampoline
    let (bindings, _) = bindings::add_api::instantiate(&mut store, &component, ()).unwrap();

    // Call your exported WIT function and test it
    let result = bindings.add(&mut store, 2, 3)?;
    assert_eq!(result, 5);

    Ok(())
}