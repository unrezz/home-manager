{
  description = "Home Manager configuration of unrezz";

# ===== Inputs =================================================
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  # • Home manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  # • Hyprland 
    hyprland.url = "github:hyprwm/Hyprland";
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
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
