{ config, pkgs, inputs, ... }: {

  wayland.windowManager.hyprland = {

    enable = true;

# ===== Plugins ==========================================================================
    plugins = [
      inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprexpo
      inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprbars
      inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprtrails
    ];

# ===== Settings =========================================================================
    settings = {

  # ===== General =====

      # general = with config.colorScheme.colors; {
      #   "col.active_border" = "rgba(${base0E}ff) rgba(${base0E}ff) 60deg";
      #   "col.inactive_border" = "rgba(${base00}ff)"
      # };

  # ===== Hyprbars =====
      hyprbars = {
        # example config
        bar_height = 20;

        # example buttons (R -> L)
        # hyprbars-button = color, size, on-click
        hyprbars-button = [
          "rgb(ff4040), 10, 󰖭, hyprctl dispatch killactive"
          "rgb(eeee11), 10, , hyprctl dispatch fullscreen 1"
        ];

        # cmd to run on double click of the bar
        on_double_click = "hyprctl dispatch fullscreen 1";
      };

  # ===== Hyprexpo =====
      exec-once = "hyprctl plugin load \"$HYPR_PLUGIN_DIR/lib/libhyprexpo.so\"";

      hyprexpo = {
        columns = 3;
        gap_size = 5;
        bg_col = "rgb(111111)";
        workspace_method = "center current"; # [center/first] [workspace] e.g. first 1 or center m+1
        skip_empty = "false"; # Its already disabled by default.

        gesture_distance = 300; # how far is the "max" for the gesture
      };

      bind = "SUPER, W, hyprexpo:expo, toggle";

  # ===== Hyprtrails =====
      hyprtrails = {
        color = "rgba(ffaa00ff)";
      };

    };

  };
}
