{
    # A Playground For WebGPU and Nix with Rust
    description = "A Playground For WebGPU and Nix with Rust";

    # Upstream Input Control For Packages
    # Basically A Dependency Manager
    inputs = 
    {
        # Nix Package Repository
        # A general ecosystem for all nix projects
        nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

        # Helper library for multiplatform support along with other things
        flake-utils.url = "github:numtide/flake-utils";

        # Get exact rust builds
        rust-overlay.url = "github:oxalica/rust-overlay";

        # Reverse Compatablility
        flake-compat = {
            url = "github:edolstra/flake-compat";
            flake = false;
        }; 
    };

    # Passes the inputs into the outputs
    # Translates inputs of pkgs to outputs
    outputs = { self, nixpkgs,
        flake-utils, 
        rust-overlay, 
        ...
    }:

    let
        inherit (nixpkgs) lib;

        # Allows us to cover all types of systems
        eachSystem = lib.genAttrs lib.systems.flakeExposed;

        # Loop through each section of compatable devices
    in 
    {

        packages = eachSystem (system: 
        let
            pkgs = import nixpkgs 
            {
                inherit system;
                overlays = [(import rust-overlay)];
            };

            # explicitly define what we want rust to handle including targeting for wasm
            rust = pkgs.rust-bin.nightly."2024-05-23".default.override 
            {
                targets = [
                    "wasm32-unknown-unknown" 
                ];
                extensions = ["rust-src"];
            };

        in
        {
            # Setting up a default package
            default = self.packages.${system}.component-env;

            component-env = pkgs.stdenv.mkDerivation
            {
                name = "dummy-placeholder-component";

                buildInputs = [
                    rust
                    pkgs.wit-bindgen
                    pkgs.wasm-tools
                ];

                buildPhase = "echo 'Nothing to build yet'";
                installPhase = "mkdir -p $out";
            };
        });

        devShells = eachSystem (system:
        let
            pkgs = import nixpkgs
            {
                inherit system;
                overlays = [ (import rust-overlay)];
            };

            rust = pkgs.rust-bin.nightly."2024-05-23".default.override 
            {
                targets = [
                    "wasm32-unknown-unknown"
                ];
                extensions = [ "rust-src" ];
            };
        in 
        {
            default = pkgs.mkShell 
            {
                name = "webgpu-component-dev-shell";

                buildInputs = [
                    rust
                    pkgs.wasm-pack
                    pkgs.wasm-tools
                    pkgs.wit-bindgen
                    pkgs.wasmtime
                    pkgs.pkg-config
                    pkgs.openssl
                    pkgs.clang
                    pkgs.llvmPackages.bintools
                    nixfmt-rfc-style
                ];

                shellHook = ''
                    echo "WebGPU/WIT interface test"
                '';
            };
        });
    };
}
