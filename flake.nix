{
  description = "Rustup-free WebGPU/WIT/WASM dev shell with WAC, WKG, and wasm32-wasip2 support";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    fenix.url = "github:nix-community/fenix";
  };

  outputs = { self, nixpkgs, flake-utils, fenix, ... }:
    flake-utils.lib.eachSystem [ "x86_64-linux" "aarch64-darwin" ] (system:
      let
        overlays = [
          (final: prev: {
            wac = prev.rustPlatform.buildRustPackage (finalAttrs: {
              pname = "wac";
              version = "0.7.0-pre";

              src = prev.fetchFromGitHub {
                owner = "bytecodealliance";
                repo = "wac";
                rev = "9de558adfaee43d29b792bcef8a13e480cc2717d";
                hash = "sha256-iu81B4AXEwH8RLRK0AxciVP4kzdGpVLY2hjS19oG+58=";
              };

              cargoHash = "sha256-vzuZpdkcd3yv+io7acGwIMTQw/muDtt4ZQC95Mm6Xiw=";

              passthru.updateScript = prev.nix-update-script { };

              meta = {
                description = "WebAssembly Composition CLI (unreleased)";
                homepage = "https://github.com/bytecodealliance/wac";
                license = prev.lib.licenses.asl20;
                maintainers = with prev.lib.maintainers; [ ];
                mainProgram = "wac";
              };
            });
          })
        ];

        pkgs = import nixpkgs {
          inherit system overlays;
        };

        toolchain = fenix.packages.${system}.stable.withComponents [
          "cargo"
          "rustc"
          "rust-analyzer"
          "rustfmt"
          "llvm-tools-preview"
        ];

        rust = fenix.packages.${system}.combine [
          toolchain
          fenix.packages.${system}.targets.wasm32-wasip2.stable.rust-std
          fenix.packages.${system}.targets.wasm32-wasip1.stable.rust-std
        ];
      in {
        devShells.default = pkgs.mkShell {
          name = "webgpu-wit-shell";

          buildInputs = [
            rust
            pkgs.wac
            pkgs.wkg
            pkgs.wasm-tools
            pkgs.wasmtime
            pkgs.wasm-pack
            pkgs.cargo-component
            pkgs.clang
            pkgs.llvmPackages.bintools
            pkgs.pkg-config
            pkgs.openssl
            pkgs.docker
            pkgs.nixfmt-rfc-style
            pkgs.protobuf
            pkgs.nodejs_20
          ];
        };

        packages.${system}.wac = pkgs.wac;
        defaultPackage.${system} = pkgs.wac;
      });

}
