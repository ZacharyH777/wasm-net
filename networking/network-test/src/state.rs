use wasmtime::component::ResourceTable;
use wasmtime_wasi::p2::{WasiCtx, WasiCtxBuilder, WasiView, IoView};

pub struct States {
    table: ResourceTable,
    ctx: WasiCtx,
}

impl States {
    pub fn new() -> Self {
        let table = ResourceTable::new();
        let ctx = WasiCtxBuilder::new()
            .inherit_stdio()
            .build();
        Self { table, ctx }
    }
}

impl WasiView for States {
    fn ctx(&mut self) -> &mut WasiCtx {
        &mut self.ctx
    }
}

impl IoView for States {
    fn table(&mut self) -> &mut ResourceTable {
        &mut self.table
    }
}