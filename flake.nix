{

description = "A Nix Flake for my custom 16 color palette.";

inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

outputs = { self, nixpkgs }: let
  supportedSystems = [ "x86_64-linux" "aarch64-linux" ];
  allSystems = output: nixpkgs.lib.genAttrs supportedSystems
    (system: output nixpkgs.legacyPackages.${system});
in {
  lib = {
    inherit (import ./colors.nix) colors;
  };

  packages = allSystems (pkgs: {
    css = let
      colors = pkgs.lib.mapAttrs (_: x: "#" + x) self.lib.colors;
    in pkgs.writeText "colors.css" (import ./formats/css.nix colors);
  });
};

}
