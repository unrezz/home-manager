{ config, pkgs, ... }:

{

  gtk = {
    gtk4.theme = config.gtk.theme;
    enable = true;
    colorScheme = "dark";
    theme.name = "Omni";
    # cursorTheme.name = "BreezeX-RoséPineDawn";
    cursorTheme.name = "Bibata-Original-Classic";
    iconTheme.name = "Nordzy-purple";
  };

  home.packages = with pkgs; [
    omni-gtk-theme
    nordzy-icon-theme
    bibata-cursors

    lavanda-gtk-theme
    rose-pine-cursor
    arashi
  ];

}
