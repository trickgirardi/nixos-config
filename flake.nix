{
  description = "Patrick Girardi's NixOS configuration";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

  inputs.claude-code.url = "github:sadjow/claude-code-nix";

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [ ./configuration.nix ];
    };
  };
}