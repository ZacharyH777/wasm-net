#![allow(warnings)]

mod bindings;

use bincode::{config::standard, decode_from_slice, encode_to_vec, Decode, Encode};
use lz4_flex::{compress_prepend_size, decompress_size_prepended};
use rand::thread_rng;
use std::cell::RefCell;

use bindings::exports::component::networking_server::packets::{Guest as GuestPacket, GuestPacket as PacketTrait};
use bindings::exports::component::networking_server::packet_manager::{Guest as ServerGuest, Packet as OtherPacket};


#[derive(Encode, Decode, Debug)]
struct ServerMessage {
    from_ids: Vec<u32>,
    to_ids: Vec<u32>,
    type_ids: Vec<u32>,
    sizes: Vec<u32>,
    data: Vec<u8>, 
}

// An actual message
// Can be put in server messages as type 1
// Need a better way to enforce
#[derive(Encode, Decode, Debug)]
struct ClientMessage {
    content: String,
}


#[derive(Debug)]
pub struct Packet {
    bytes: RefCell<Vec<u8>>,
}

// data will still be passed as a vec<u8> not as a packet
// however, still might be good to keep this specially forserver so it is easy
// to pass around in wit
impl PacketTrait for Packet {
    fn new(raw: Vec<u8>) -> Self {
        let compressed = compress_prepend_size(&raw);
        Packet {
            bytes: RefCell::new(compressed),
        }
    }

    fn get_bytes(&self) -> Vec<u8> {
        self.bytes.borrow().clone()
    }

    fn get_raw(&self) -> Vec<u8> {
        decompress_size_prepended(&self.bytes.borrow()).expect("Decompression failed")
    }

    // Haven't thought of a reason to set data that is not already compressed or 
    // is not set by wit/wasm itself which can use rust compress decrompress commands
    fn set_bytes(&self, raw: Vec<u8>) {
        *self.bytes.borrow_mut() = raw;
    }
}

// This is sorta generic but needs work

fn build_server_message<T: Encode>(
    messages: &[(u32, u32, u32, T)], 
) -> ServerMessage {
    let mut from_ids = Vec::new();
    let mut to_ids = Vec::new();
    let mut type_ids = Vec::new();
    let mut sizes = Vec::new();
    let mut data = Vec::new();

    for (from, to, type_id, payload) in messages {
        let encoded = encode_to_vec(payload, standard()).expect("Encoding failed");
        from_ids.push(*from);
        to_ids.push(*to);
        type_ids.push(*type_id);
        sizes.push(encoded.len() as u32);
        data.extend(encoded);
    }

    ServerMessage {
        from_ids,
        to_ids,
        type_ids,
        sizes,
        data,
    }
}

fn extract_messages<'a>(
    msg: &'a ServerMessage,
) -> impl Iterator<Item = (u32, u32, u32, &'a [u8])> + 'a {
    let mut offset = 0;
    (0..msg.from_ids.len()).map(move |i| {
        let size = msg.sizes[i] as usize;
        let slice = &msg.data[offset..offset + size];
        offset += size;
        (
            msg.from_ids[i],
            msg.to_ids[i],
            msg.type_ids[i],
            slice,
        )
    })
}

pub struct Component;

impl GuestPacket for Component {
    type Packet = Packet;
}

impl ServerGuest for Component {
    // For now we send a little test message
    // Better for determining a security key between a client and server
    // so all further messages would be secure.
    fn spawn_client(id: u32) -> OtherPacket {
        println!("Spawning client {id}");

        let welcome_msg = ClientMessage {
            content: format!("[server]: Welcome to the server, client #{id}!\n"),
        };

        let batch = build_server_message(&[(0, id, 1, welcome_msg)]);
        let encoded = encode_to_vec(&batch, standard()).expect("Encoding failed");

        OtherPacket::new(Packet::new(encoded))
    }

    fn handle_packet(data: OtherPacket) -> OtherPacket {
        let raw = data.get::<Packet>().get_raw();

        let (batch, _) = decode_from_slice::<ServerMessage, _>(&raw, standard())
            .expect("Failed to decode ServerMessage");

        for (from_id, to_id, type_id, payload) in extract_messages(&batch) {
            match type_id {
                1 => {
                    let (client_msg, _) = decode_from_slice::<ClientMessage, _>(payload, standard())
                        .expect("Failed to decode ClientMessage");
                    println!("[from {from_id} -> to {to_id}] {}", client_msg.content);
                }
                _ => {
                    println!("[from {from_id} -> to {to_id}] Unknown type: {type_id}");
                }
            }
        }

        let reply = ClientMessage {
            content: "Got your message!".to_string(),
        };

        let first_sender = batch.from_ids.get(0).copied().unwrap_or(0);

        let response = build_server_message(&[(0, first_sender, 1, reply)]);
        let encoded = encode_to_vec(&response, standard()).expect("Encoding failed");

        OtherPacket::new(Packet::new(encoded))
    }
}

bindings::export!(Component with_types_in bindings);
