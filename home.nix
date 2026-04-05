{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should manage.
  home.username = "unrezz";
  home.homeDirectory = "/home/unrezz";

  imports = [
    ./modules/git.nix
    ./modules/gtk.nix
    ./modules/homepkgs.nix
    ./modules/mimeApps.nix
    ./modules/scripts.ex.nix
    ./modules/zsh.nix
  ];

  home.packages = [
    # It is sometimes useful to fine-tune packages, for example, by applying overrides. You can do that directly here, just don't forget the parentheses. Maybe you want to install Nerd Fonts with a limited number of fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })
  ];

  home.file = { # The primary way to manage plain dot files is through 'home.file'.
    # Building this configuration will create a copy of 'dotfiles/screenrc' in the Nix store. Activating the configuration will then make '~/.screenrc' a symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  home.sessionVariables = {
    EDITOR = "emacs";
  };

  home.stateVersion = "25.11"; # Avoid unnecessary changing.

  programs.home-manager.enable = true; # Let Home Manager install and manage itself.
}
