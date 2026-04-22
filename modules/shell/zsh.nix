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
        p = "clear && python3";
        ff = "clear && fastfetch";
        wp = "pkill .mpvpaper-wrapp && mpvpaper -fo \"no-audio loop\" eDP-1";
        wpp = "mpvpaper -fo \"no-audio loop\" eDP-1";
        swn = "awww img ~/Pictures/wallhaven/wallhaven-vpoem3.jpg";
        t = "clear && tree -aL 3 && la";
        s = "clear && tree -L 3 && la";
        m = "termusic";
  
    # • Python shells 
        CEC = "nix-shell /home/unrezz/nixos/shell/CEC.nix";
        pyHE = "nix-shell ~/nix-shell/python/hapeyes.nix --run zsh && cd ~/proyects/Haptic_eyes/";
  
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
