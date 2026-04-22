{ config, pkgs, ... }:

{

  gtk = {
    gtk4.theme = config.gtk.theme;
    enable = true;
    colorScheme = "dark";
    theme.name = "Omni";
    cursorTheme.name = "BreezeX-RoséPineDawn";
    iconTheme.name = "Nordzy-purple";
  };

  home.packages = with pkgs; [
    omni-gtk-theme
    nordzy-icon-theme

    lavanda-gtk-theme
    rose-pine-cursor
    arashi
  ];

}
