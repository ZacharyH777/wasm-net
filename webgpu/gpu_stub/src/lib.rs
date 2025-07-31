mod render_config;

#[no_mangle]
pub extern "C" fn gpu_device_init(_config: *const render_config::RendererConfig) {
    unreachable!("Unlinked call to gpu_device_init");
}