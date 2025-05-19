{
  description = "riceOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    home-manager = {
      url = github:nix-community/home-manager/release-24.11;
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {nixpkgs, home-manager, ...} @ inputs: {
    nixosConfigurations.riceOS = nixpkgs.lib.nixosSystem {
      system = "x84_64-linux";
      modules = [
        ./modules/core/configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useUserPackages = true;
            useGlobalPkgs = true;
            users.ricejustice = ./modules/home/home.nix;
          };
        }
      ];
    };
  };
}
