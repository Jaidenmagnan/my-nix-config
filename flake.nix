{
  description = "A simple NixOS flake";

  inputs = {
    # NixOS official package source, using the nixos-24.11 branch here
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
	url = "github:nix-community/home-manager";
	inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser.url = "github:youwen5/zen-browser-flake";

  };

  outputs = { self, nixpkgs, ... }@inputs: 
  let 
      system = "x86_64-linux";
  in {
    
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
    specialArgs = {
    inherit inputs system;
        };
      modules = [
        ./configuration.nix
      ];
    };

  };
}
