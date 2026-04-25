{ config, pkgs, ... }:

{

  imports = [
    ./ohmyposh.nix
  ];
  programs = {

# ===== Starship config ============================================================================

# ===== ZSH config
    zsh = {
      enable = true;

      oh-my-zsh = {
        enable = true;
      };
  
    
  
# ===== Aliases ====================================================================================
      shellAliases = {
  
      # • Nix shortcuts.

        try = "nix-shell -p";
        nox = "sudo nixos-rebuild switch --flake ~/nixos";
        ts = "sudo nixos-rebuild test --flake ~/nixos";
        h = "home-manager switch";
        f = "nvim flake.nix";
        y = "yazi";
        v = "nvim";
        n = "sudo nvim";
        sw = "swww img";
        shd = "shutdown now";
        rbt = "sudo reboot now";
        p = "clear && python";
        ff = "clear && fastfetch";
        t = "clear && tree -aL 3 && la";
        s = "clear && tree -L 3 && la";
        m = "termusic";
  
    # • Python shells 
        CEC = "nix-shell ~/nixos/shell/CEC.nix";
        pyHE = "nix-shell ~/nixos/shell/hapeyes.nix --run";
  
    # • Quick acceses to folders. 

      };
  
      # enableAutosuggestions = true;

      # enableCompletition = true;
      # envExtra = ''
      #   export SOMEZSHVARIABLE="something"
      # '';
    };
  };
  
# ===== Packages ===================================================================================
    home.packages = with pkgs; [
      oh-my-zsh
      starship
    ];

}
