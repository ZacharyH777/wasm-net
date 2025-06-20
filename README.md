# wasm-net

## Overview

This repository is a showcase of a pipeline that integrates **WIT**, **WebGPU**, and **WASM components**. It was created for both personal learning and to help others explore the modern WebAssembly component model pipeline using tools like `cargo-component`, `wasm-tools`, and `wac`.

This project aims to support those interested in:
- WebGPU
- WASM component models
- Nix-based development
- Game/graphics engine architecture

As of **June 19, 2025**, this project reflects the most recent component model practices.

---

## How to Run the Project

1. Enter the Nix development shell:
   ```bash
   nix develop
   ```

2. Navigate to the WebGPU demo folder:
   ```bash
   cd webgpu
   ```

---

## Helpful Rust Commands and Tools

### `cargo-component`
- **Create a new component package:**
  ```bash
  cargo component new <my-package-name>
  ```

  - To create a *command-style* component, use:
    ```bash
    cargo component new <my-package-name> --command
    ```

- **Generate WIT bindings for your component:**
  ```bash
  cargo component bindings
  ```

- **Build your component (required for `.wac`):**
  ```bash
  cargo component build --release
  ```

---

### `wasm-tools`

- **Inspect/decompile a WASM component’s WIT interface:**
  ```bash
  wasm-tools component wit path/to/component.wasm
  ```

---

### `wac` – WebAssembly Composition Tool

- **WAC Documentation:**
  - [Component Model Tutorial](https://component-model.bytecodealliance.org/tutorial.html)
  - [WAC Language Reference (Grammar)](https://github.com/bytecodealliance/wac/blob/main/LANGUAGE.md)

---

## Summary

This project is intended to demystify the modern WebAssembly ecosystem by providing real, working examples built with:
- The WebAssembly Component Model
- WebGPU bindings
- Rust tooling (`cargo-component`, `wasm-tools`, `wac`)
- Nix-based reproducible development environments

Whether you're learning or prototyping, this is a great place to explore how these technologies come together.

---

Feel free to contribute, fork, or use this setup as inspiration for your own component-driven WebGPU projects!
