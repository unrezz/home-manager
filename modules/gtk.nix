{ config, pkgs, ... }:

{

  gtk = {
    # gtk4.theme = null;
    enable = true;
    theme.name = "Omni";
    cursorTheme.name = "Rose-pine-hyprcursor";
    iconTheme.name = "Nordzy-purple-dark";
  };

  home.packages = with pkgs; [
    omni-gtk-theme
    bibata-cursors
    nordzy-icon-theme
  ];

}
