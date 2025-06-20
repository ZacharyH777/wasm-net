# wasm-net

## WebGPU

This is a showcase for a pipeline using wit and webgpu. This was made for both learning purposes and to further the knowledge about this pipeline as of 6/19/2025

The writing will hopefully help those who are attempting to learn something similar, about wasm, nix, webgpu and engines in general.

### To Test This Package:


run:

```
nix develop
```

open up into webgpu folder
```
cd webgpu
```


## Tools To Remember For Rust
### Component
Creates a folder with basic component needs
> ```cargo component <new my-package-name>```
>> P.S. --command allows you to create command commonent instead
Creates bindings for a component
> ```cargo component bindings``` 
Builds components: release is required for wac
> ```cargo component build --release```
Allows you to view decompiled wasm files
> ```wasm-tools component wit path/to/wasm```

### WAC
For more information here I suggest:
https://component-model.bytecodealliance.org/tutorial.html

For more on Grammer an the language of wac
https://github.com/bytecodealliance/wac/blob/main/LANGUAGE.md