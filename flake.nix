{
  description = "Home Manager configuration of unrezz";

# ===== Inputs =================================================
  inputs = {

  # • Stable branch
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  # • Unstable branch
    unstable.url = "github:nixos/nixpkgs/nixos-25.11";

  # • Home manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

# ===== Outputs ================================================
  outputs = { self, nixpkgs, home-manager, hyprland-plugins, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      homeConfigurations = {

        unrezz = home-manager.lib.homeManagerConfiguration {
          extraSpecialArgs = { inherit inputs; };
          inherit pkgs;
          modules = [ ./home.nix ];
        };

      };
    };

}
