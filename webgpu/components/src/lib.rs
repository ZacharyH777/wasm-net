#[allow(warnings)]
mod bindings;


use bindings::exports::engine::components::transform::{Guest as Transform, Transform3d};

use crate::bindings::math::vec::vec3::float32 as vec3f;
use crate::bindings::math::vec::vec4::float32 as vec4f;

struct Component;

impl Transform for Component {
    fn build3d() -> Transform3d {
        Transform3d {
            position:   vec3f(),
            rotation:   vec3f(),
            quaterion:  vec4f(),
            scale:      vec3f(),
        }
    }
}

bindings::export!(Component with_types_in bindings);