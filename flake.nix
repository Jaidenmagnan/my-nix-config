{
  description = "A simple NixOS flake";
  inputs = {
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
    
    nixosConfigurations = {
      # PC Configuration
      pc = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs system;
        };
        modules = [
          ./hosts/pc/configuration.nix
        ];
      };
      
      # Laptop Configuration  
      laptop = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs system;
        };
        modules = [
          ./hosts/laptop/configuration.nix
        ];
      };

    };
  };
}
