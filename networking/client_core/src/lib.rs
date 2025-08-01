#[allow(warnings)]
mod bindings;

use bindings::Guest;

struct ClientComponent;

impl Guest for ClientComponent {
    fn handle_server_message(msg: String) {
        println!("[Client] Received: {}", msg);
    }
}

bindings::export!(ClientComponent with_types_in bindings);