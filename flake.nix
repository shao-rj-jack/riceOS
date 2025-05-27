{
  description = "riceOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf.url = "github:notashelf/nvf";
  };

  outputs = {
    nixpkgs,
    home-manager,
    nvf,
    ...
  } @ inputs: {
    nixosConfigurations.riceOS = nixpkgs.lib.nixosSystem {
      system = "x84_64-linux";
      modules = [
        ./modules/core/configuration.nix

        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useUserPackages = true;
            useGlobalPkgs = false;
            sharedModules = [nvf.homeManagerModules.default];
            users.ricejustice = ./modules/home/home.nix;
          };
        }
      ];
    };
  };
}
