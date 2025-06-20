{
  description = "Rustup-managed WebGPU/WIT/WASM dev shell with platform-aware Nix flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  # Modern flake project, so no flake-compat
  # Not sure if I want to deal with webgpu and older comps 

  # Spreading still confusing, From what I know it makes the flake extenable
  # Take in more than just what I declare
  outputs = { self, nixpkgs, flake-utils, ... }: 
    # not sure if any others are supported
    # want to try make to make sure it works with this too
    let
      supportedSystems = [
        "x86_64-linux"
        "aarch64-darwin"
      ];

      eachSystem = flake-utils.lib.eachSystem supportedSystems;
    in

    #Go through a list of all supported supported Systems
    #This way can keep track of what is or is not supported
    eachSystem (system:
    #Version change in nix pakages. Meaning nix setup can be different 
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        devShells.default = pkgs.mkShell {
          name = "webgpu-wit-shell";

          buildInputs = [
            pkgs.rustup
            pkgs.cargo
            pkgs.cargo-component
            pkgs.wasm-tools

            pkgs.pkg-config
            pkgs.openssl
            pkgs.wasm-pack
            pkgs.wasmtime
            pkgs.clang
            pkgs.llvmPackages.bintools
            pkgs.nixfmt-rfc-style
            pkgs.protobuf
            pkgs.nodejs_20
          ];

          # Not sure about rustc can't test on other machine
          # Might be able to just pin it but this makes it easier
          # for now


          # Flakes feel like they should not do this
          # Am I doing this wrong, To refer back too:
          # https://nix.dev/manual/nix/2.28/command-ref/nix-shell.html
          shellHook = ''
            echo " WebGPU, WIT, wasm dev shell"
            export RUSTUP_HOME="$PWD/.rustup"
            export CARGO_HOME="$PWD/.cargo"

            rustup install nightly-2025-06-16
            rustup default nightly-2025-06-16

            #Rustup will automatically target system based wasm
            #But since most of it is a lib we want it to be cross compatible
            #This does not work for tests/errn though. So note what to compile 
            rustup target add wasm32-unknown-unknown

            #wac-cli doesn't have a nix packages
            #but is required for this project
            cargo install wac-cli
          '';
        };

        #I will look into buildable packages when needed
      }
    );
}
