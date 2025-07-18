{
  description = "Created by Retryelle";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... } @inputs:
  let
    user = "Retryelle";

    hosts = [
      {
        hostname = "LatitudeE5570";
        system = "x86_64-linux";
        stateVersion = "25.05";
      }
    ];

    build = { hostname, system, stateVersion }: nixpkgs.lib.nixosSystem {
      system = system;
      
      specialArgs = {
        inherit inputs user hostname stateVersion;
      };

      modules = [
        ./hosts/${hostname}/modules

        # home-manager.nixosModules.home-manager
        # {
        #   home-manager = {
        #     useGlobalPkgs = true;
        #     useUserPackages = true;
        #     users.${user} = ./hosts/${hostname}/home-manager/home.nix;
        #   };
        # }
      ];
    };
  in

  {
    nixosConfigurations = nixpkgs.lib.foldl' (configs: host:
    configs // {
      "${host.hostname}" = build {
        inherit (host) hostname system stateVersion;
      };
    }) {} hosts;
  };
}
