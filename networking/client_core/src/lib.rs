#[allow(warnings)]
mod bindings;

use bincode::{config::standard, decode_from_slice, encode_to_vec, Decode, Encode};
use lz4_flex::{compress_prepend_size, decompress_size_prepended};
use std::cell::RefCell;

use bindings::exports::component::networking_client::packets::{Guest as GuestPacket, GuestPacket as PacketTrait};
use bindings::exports::component::networking_client::packet_manager::{Guest as ManagerGuest, Packet as WrapperPacket};

#[derive(Encode, Decode, Debug)]
struct ServerMessage {
    content: String,
}

#[derive(Encode, Decode, Debug)]
struct MessageEnvelope {
    from_ids: Vec<u32>,
    to_ids: Vec<u32>,
    type_ids: Vec<u32>,
    sizes: Vec<u32>,
    data: Vec<u8>,
}


#[derive(Debug)]
pub struct Packet {
    bytes: RefCell<Vec<u8>>, // We want to move the data not copy it
}

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

    fn set_bytes(&self, raw: Vec<u8>) {
        *self.bytes.borrow_mut() = raw;
    }
}


fn extract_messages<'a>(
    env: &'a MessageEnvelope,
) -> impl Iterator<Item = (u32, u32, u32, &'a [u8])> + 'a {
    let mut offset = 0;
    (0..env.from_ids.len()).map(move |i| {
        let size = env.sizes[i] as usize; // As we iterate we want to get each data slab size
        let slice = &env.data[offset..offset + size]; // This is the slice or slab of data corresponding to the this type
        offset += size;
        // Build our message envolope from the parsed data above
        (
            env.from_ids[i],
            env.to_ids[i],
            env.type_ids[i],
            slice,
        )
    })
}


struct Component;

impl GuestPacket for Component {
    type Packet = Packet;
}

// Because I used "use" in wit for packet, I have to build a wrapper packet here to enable it
impl ManagerGuest for Component {
    fn handle_packet(data: WrapperPacket) -> WrapperPacket {
        // I use raw here to say I want the uncompressed format
        let raw = data.get::<Packet>().get_raw(); // Allows use to corrispond the different wit packets

        let (envelope, _) = decode_from_slice::<MessageEnvelope, _>(&raw, standard())
            .expect("Failed to decode message envelope");

        // Essentially a large if statement
        // Don't really care for that but what is best for now
        for (from, to, type_id, payload) in extract_messages(&envelope) {
            match type_id {
                1 => {
                    let (msg, _) = decode_from_slice::<ServerMessage, _>(payload, standard())
                        .expect("Failed to decode ServerMessage");
                    println!("[server -> client #{to}] {}", msg.content);
                }
                _ => {
                    println!("Unknown message type {type_id} from #{from} to #{to}");
                }
            }
        }

        // Not sure if this should be a void function or if I should just implement actions here.
        // That way the packet can be reused.
        data
    }
}

bindings::export!(Component with_types_in bindings);