    #[repr(C)]
    pub struct Limits {
        pub max_bind_groups: u32,
        pub max_dynamic_uniform_buffers_per_pipeline_layout: u32,
        pub max_dynamic_storage_buffers_per_pipeline_layout: u32,
        pub max_sampled_textures_per_shader_stage: u32,
        pub max_samplers_per_shader_stage: u32,
        pub max_storage_buffers_per_shader_stage: u32,
        pub max_uniform_buffers_per_shader_stage: u32,
        pub max_uniform_buffer_binding_size: u64,
        pub max_storage_buffer_binding_size: u64,
        pub max_buffer_size: u64,
    }

    #[repr(C)]
    pub struct MemoryHints {
        pub max_allocation_size: u64,
        pub non_coherent_atom_size: u64,
    }

    #[repr(C)]
    pub enum TraceTag {
        Disabled = 0,
        Enabled = 1,
    }

    #[repr(C)]
    pub struct DeviceDescriptor {
        pub label: *const libc::c_char,
        pub required_features: *const *const libc::c_char,
        pub num_required_features: usize,
        pub required_limits: Limits,
        pub memory_hints: MemoryHints,
        pub trace: TraceTag,
        pub path:  *const libc::c_char
    }

    #[repr(C)]
    pub struct RendererConfig {
        pub width: u32,
        pub height: u32,
        pub canvas_width: u32,
        pub canvas_height: u32,
        pub title: *const libc::c_char,

        pub device: DeviceDescriptor,

        pub power_preference: u8,
        pub force_fallback_adapter: bool,
        pub backend: u8,

        pub present_mode: u8,
        pub use_vsync: bool,
        pub allow_hdr: bool,

        pub enable_logging: bool,
        pub dpi_scale: f32,
    }