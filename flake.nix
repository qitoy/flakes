{
  description = "qitoy's flakes";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    nvfetcher.url = "github:berberman/nvfetcher";
    nvfetcher.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, flake-utils, nvfetcher }:
    let
      genPkg = f: name: {
        inherit name;
        value = f name;
      };

      pkgDir = ./packages;
      broken = import ./broken.nix;
      generated = import ./_sources/generated.nix;

      names = nixpkgs.lib.subtractLists broken (builtins.attrNames (builtins.readDir pkgDir));
      withContents = f: builtins.listToAttrs (builtins.map (genPkg f) names);
    in

    {
      overlays.default = final: prev:
        let
          sources = generated {
            inherit (final) fetchurl fetchgit fetchFromGitHub dockerTools;
          };
        in
        withContents (name:
          let
            pkgs = import (pkgDir + "/${name}");
            override = builtins.intersectAttrs (builtins.functionArgs pkgs) {
              pythonPackages = final.python3.pkgs;
              source = sources.${name};
            };
          in
          final.callPackage pkgs override
        );
    }

    // flake-utils.lib.eachDefaultSystem (system:
      let pkgs = import nixpkgs { inherit system; overlays = [ self.overlays.default nvfetcher.overlays.default ]; };
      in rec {
        packages = withContents (name: pkgs.${name});
        legacyPackages = pkgs;
        apps = pkgs.lib.filterAttrs (_: x: x.program != null) (
          withContents (name:
            let drv = pkgs.${name};
            in { type = "app"; program = if drv.passthru.runnable or false then "${drv}/bin/${drv.passthru.program or name}" else null; })
        );
        checks = packages;
        devShells.default = nvfetcher.packages.${system}.ghcWithNvfetcher;
      }
    )
  ;
}
