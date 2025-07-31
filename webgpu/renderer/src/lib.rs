#[allow(warnings)]
mod bindings;
mod render_config;

use std::ffi::CString;
use bindings::exports::wgpu::renderer::gpucontext::Guest;
use render_config::{RendererConfig, DeviceDescriptor, Limits, MemoryHints, TraceTag};

struct Renderer;

impl Guest for Renderer {
    fn init() {

        let title = CString::new("My App").unwrap();
        let label = CString::new("main-device").unwrap();
        let path_cstring = CString::new("/some/path").unwrap();

        let config = RendererConfig {
            width: 800,
            height: 600,
            canvas_width: 800,
            canvas_height: 600,
            title: title.as_ptr(),

            device: DeviceDescriptor {
                label: label.as_ptr(),
                required_features: std::ptr::null(),
                num_required_features: 0,
                required_limits: Limits {
                    max_bind_groups: 4,
                    max_dynamic_uniform_buffers_per_pipeline_layout: 4,
                    max_dynamic_storage_buffers_per_pipeline_layout: 4,
                    max_sampled_textures_per_shader_stage: 16,
                    max_samplers_per_shader_stage: 16,
                    max_storage_buffers_per_shader_stage: 8,
                    max_uniform_buffers_per_shader_stage: 8,
                    max_uniform_buffer_binding_size: 65536,
                    max_storage_buffer_binding_size: 131072,
                    max_buffer_size: 268435456,
                },
                memory_hints: MemoryHints {
                    max_allocation_size: 1 << 30,
                    non_coherent_atom_size: 256,
                },
                trace: TraceTag::Disabled,
                path: path_cstring.as_ptr()
            },

            power_preference: 1,
            force_fallback_adapter: false,
            backend: 1,
            present_mode: 2,
            use_vsync: true,
            allow_hdr: false,

            enable_logging: true,
            dpi_scale: 1.0,
        };

        let _hold = (title, label, path_cstring);

        unsafe {
            gpu_device_init(&config);
        }
    }
}

bindings::export!(Renderer with_types_in bindings);

#[unsafe(no_mangle)]
pub extern "C" fn setup() {
    unsafe {
        bindings::exports::wgpu::renderer::gpucontext::_export_init_cabi::<Renderer>();
    }
}

unsafe extern "C" {
    #[link_name = "gpu_context::gpu_device_init"]
    fn gpu_device_init(config: *const RendererConfig);
}
