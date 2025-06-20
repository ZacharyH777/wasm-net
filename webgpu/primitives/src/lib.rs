#[allow(warnings)]
mod bindings;

use bindings::exports::math::vec::vec2::Guest as Vec2;
use bindings::exports::math::vec::vec3::Guest as Vec3;
use bindings::exports::math::vec::vec4::Guest as Vec4;

// -- vec2 types --
use crate::bindings::exports::math::vec::vec2::{
    Vec2F32, Vec2F64,
    Vec2S8, Vec2S16, Vec2S32, Vec2S64,
    Vec2U8, Vec2U16, Vec2U32, Vec2U64,
};

// -- vec3 types --
use crate::bindings::exports::math::vec::vec3::{
    Vec3F32, Vec3F64,
    Vec3S8, Vec3S16, Vec3S32, Vec3S64,
    Vec3U8, Vec3U16, Vec3U32, Vec3U64,
};

// -- vec4 types --
use crate::bindings::exports::math::vec::vec4::{
    Vec4F32, Vec4F64,
    Vec4S8, Vec4S16, Vec4S32, Vec4S64,
    Vec4U8, Vec4U16, Vec4U32, Vec4U64,
};

struct Component;

impl Vec2 for Component {
    fn float32() -> Vec2F32 {
        Vec2F32 { x: 0.0, y: 0.0 }
    }
    fn float64() -> Vec2F64 {
        Vec2F64 { x: 0.0, y: 0.0 }
    }
    fn int8() -> Vec2S8 {
        Vec2S8 { x: 0, y: 0 }
    }
    fn int16() -> Vec2S16 {
        Vec2S16 { x: 0, y: 0 }
    }
    fn int32() -> Vec2S32 {
        Vec2S32 { x: 0, y: 0 }
    }
    fn int64() -> Vec2S64 {
        Vec2S64 { x: 0, y: 0 }
    }
    fn uint8() -> Vec2U8 {
        Vec2U8 { x: 0, y: 0 }
    }
    fn uint16() -> Vec2U16 {
        Vec2U16 { x: 0, y: 0 }
    }
    fn uint32() -> Vec2U32 {
        Vec2U32 { x: 0, y: 0 }
    }
    fn uint64() -> Vec2U64 {
        Vec2U64 { x: 0, y: 0 }
    }
}

impl Vec3 for Component {
    fn float32() -> Vec3F32 {
        Vec3F32 { x: 0.0, y: 0.0, z: 0.0 }
    }
    fn float64() -> Vec3F64 {
        Vec3F64 { x: 0.0, y: 0.0, z: 0.0 }
    }
    fn int8() -> Vec3S8 {
        Vec3S8 { x: 0, y: 0, z: 0 }
    }
    fn int16() -> Vec3S16 {
        Vec3S16 { x: 0, y: 0, z: 0 }
    }
    fn int32() -> Vec3S32 {
        Vec3S32 { x: 0, y: 0, z: 0 }
    }
    fn int64() -> Vec3S64 {
        Vec3S64 { x: 0, y: 0, z: 0 }
    }
    fn uint8() -> Vec3U8 {
        Vec3U8 { x: 0, y: 0, z: 0 }
    }
    fn uint16() -> Vec3U16 {
        Vec3U16 { x: 0, y: 0, z: 0 }
    }
    fn uint32() -> Vec3U32 {
        Vec3U32 { x: 0, y: 0, z: 0 }
    }
    fn uint64() -> Vec3U64 {
        Vec3U64 { x: 0, y: 0, z: 0 }
    }
}

impl Vec4 for Component {
    fn float32() -> Vec4F32 {
        Vec4F32 { x: 0.0, y: 0.0, z: 0.0, w: 0.0 }
    }
    fn float64() -> Vec4F64 {
        Vec4F64 { x: 0.0, y: 0.0, z: 0.0, w: 0.0 }
    }
    fn int8() -> Vec4S8 {
        Vec4S8 { x: 0, y: 0, z: 0, w: 0 }
    }
    fn int16() -> Vec4S16 {
        Vec4S16 { x: 0, y: 0, z: 0, w: 0 }
    }
    fn int32() -> Vec4S32 {
        Vec4S32 { x: 0, y: 0, z: 0, w: 0 }
    }
    fn int64() -> Vec4S64 {
        Vec4S64 { x: 0, y: 0, z: 0, w: 0 }
    }
    fn uint8() -> Vec4U8 {
        Vec4U8 { x: 0, y: 0, z: 0, w: 0 }
    }
    fn uint16() -> Vec4U16 {
        Vec4U16 { x: 0, y: 0, z: 0, w: 0 }
    }
    fn uint32() -> Vec4U32 {
        Vec4U32 { x: 0, y: 0, z: 0, w: 0 }
    }
    fn uint64() -> Vec4U64 {
        Vec4U64 { x: 0, y: 0, z: 0, w: 0 }
    }
}


bindings::export!(Component with_types_in bindings);