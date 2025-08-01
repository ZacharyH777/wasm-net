#[allow(warnings)]
mod bindings;

use bindings::Guest;
use bincode::{encode_to_vec, decode_from_slice, config::standard, Encode, Decode};
use lz4_flex::{compress_prepend_size, decompress_size_prepended};

#[derive(Encode, Decode)]
struct ServerMessage {
    msg: String,
}

#[derive(Encode, Decode, Debug)]
struct ClientMessage {
    content: String,
}

pub struct ServerComponent;

impl Guest for ServerComponent {
    fn spawn_client(id: u32) -> Vec<u8> {
        println!("Spawning client {id}");

        let message = ServerMessage {
            msg: format!("[server]: Welcome to the server, client #{id}!\n"),
        };

        let encoded = encode_to_vec(&message, standard()).expect("Encoding failed");
        compress_prepend_size(&encoded)
    }

    fn handle_packet(data: Vec<u8>) -> Vec<u8> {
        println!("Received compressed packet: {:?}", data);

        let decompressed = decompress_size_prepended(&data)
            .expect("Failed to decompress incoming packet");

        let (decoded, _): (ClientMessage, _) =
            decode_from_slice(&decompressed, standard())
                .expect("Failed to deserialize decompressed packet");

        println!("Decoded client message: {:?}", decoded);

        let reply = ServerMessage {
            msg: format!("Got your message: '{}'", decoded.content),
        };

        let encoded = encode_to_vec(&reply, standard()).expect("Encoding reply failed");
        compress_prepend_size(&encoded)
    }
}

bindings::export!(ServerComponent with_types_in bindings);
