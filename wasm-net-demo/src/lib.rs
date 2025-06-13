use wasm_component_bindings::bindings::exports::myorg::addr::add_api::*;

wit_bindgen::generate!({
    path: "wit/adder.wit",
    world: "add-api"
});

struct Component;

impl Guest for Component {
    fn add(a:i32, b:i32) -> i32 {
        a + b
    }
}

