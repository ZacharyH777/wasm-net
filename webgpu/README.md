# WebGPU / WGPU

## The State of Things

### Status

I've had to press pause on this example for a bit. I'm waiting for the [`wasmi_runtime_layer`](https://github.com/wasmi-dev/wasmi) to get more of the WASI Preview 2 components integrated. Once that's further along, I can jump back in.

### Embedded Design Intent

The big idea here is to make this component embeddable, kind of like its own little self-contained virtual machine. This approach would let it really shine by using WIT components to create a single, clean system you can interact with.

### Why Not JCO?

At first, I thought about using [`jco`](https://github.com/bytecodealliance/jco). But after thinking it over, it kind of defeats the whole purpose of using WebAssembly in the browser for this kind of task.

JCO pretty much requires you to use a JavaScript glue layer, which just complicates things when, what is really needed is a self-contained compute module. It adds an unnecessary middleman, in my opinion.

### Philosophy on WebAssembly in the Web

I'm not against using small bits of JavaScript for DOM-like use cases. But I firmly believe WebAssembly's purpose is to accelerate isolated sections of logic with significant compute time.

This is a little arbitrary but I don't think the line is so grey that it will always be impossible to tell.

Some use cases might be harder to determine than others. Having a compute time, while over-simplified, still might help people get an idea of whether or not it is useful to use wasm.

I think wasm should have just as much time and effort put into it for the web as js. But I think the time and effort should be spent on different use cases. Other than security, which should always be a top priority for the web (and probably coding in general).

These sections should be self-contained. Breaking them up into smaller interop boundaries undermines their performance benefit and use case.

### Current Path: `wasm-unknown-unknown`

For now, building systems with `wasm-unknown-unknown` is still the most straightforward and clean approach, especially when you're targeting WGPU. It lines up perfectly with how WGPU works today and lets you sidestep all the extra overhead and complexity that WIT wrappers can introduce at this stage.

### Future Potential

All that said, I'm definitely keeping an eye on the future. I see benefits in using:

- **WIT-based components**, for cross lanuage support and tooling/algorithm benifits. (aka plugins)
- **WebAssembly threading and async**, once browser support is more widespread and practical.

Even if the system gets a bit more complex under the hood, these features all serve the same core goal: boxing up the heavy-lifting into efficient, isolated modules.

### Conclusion

So, even with a few bumps in the road right now, the move toward embeddable and composable WebAssembly systems looks really promising, especially for something like WebGPU. The main philosophy of "sectioned-off compute" is what matters, and it seems like component models just don't quite fit that model for web yet.

This conculsion came from a lot reading on Zulip and forums. People have different opinions and if you made something that shows benifits in the web contrary to what I said, let me know and share it!
