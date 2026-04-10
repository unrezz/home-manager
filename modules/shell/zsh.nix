{ config, pkgs, ... }:

{

  imports = [
    # ./starship.nix
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
        swn = "awww img ~/Pictures/wallhaven/wallhaven-kx99jm.png";
        t = "clear && tree -aL 3 && la";
        s = "clear && tree -L 3 && la";
        m = "termusic";
  
    # • Python shells 
        pyCEC = "nix-shell ~/nixos/shell/python/CEC.nix --run 'cd ~/Documents/Academia/dev/Cálculo_Energético_Computacional/' && zsh";
        pyHE = "nix-shell ~/nixos/shell/python/hapeyes.nix --run zsh && cd ~/proyects/Haptic_eyes/";
  
    # • Quick acceses to folders. 
        CEC = "cd ~/Documents/Academia/dev/Cálculo_Energético_Computacional/";

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
