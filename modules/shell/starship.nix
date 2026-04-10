{ config, pkgs, ... }:

{
  programs = {
    starship = {
      enable = true;

      # • Configuration
      settings = {

        add_newline = true;

        character = {


          success_symbol = "[](bold green) ";
          error_symbol = "[✗](bold red) ";
        };

        palette = "gruvbox_dark";

        "$schema" = "https://starship.rs/config-schema.json";
        
        # format = "[](color_m04)$os$hostname[](bg:color_m07 fg:color_m04)$directory[](fg:color_m07 bg:color_m02)$git_branch$git_status[](fg:color_m02 bg:color_m01)$c$cpp$rust$golang$nodejs$php$java$kotlin$haskell$python[](fg:color_m01 bg:color_bg3)$docker_context$conda$pixi[](fg:color_bg3 bg:color_bg1)$time[ ](fg:color_bg1)$line_break$character";
        
    format = "$all$nix_shell$nodejs$lua$golang$rust$php$git_branch$git_commit$git_state$git_status\n$username$hostname$directory(bg:color_m07 fg:color_m04)";

        palettes.gruvbox_dark = {
          color_fg0 = "#fbf1c7";
          color_bg1 = "#3c3836";
          color_bg3 = "#665c54";
          color_m01 = "#458588";
          color_m02 = "#689d6a";
          color_m03 = "#98971a";
          color_m04 = "#cc241d";
          color_m05 = "#b16286";
          color_m06 = "#d65d0e";
          color_m07 = "#d79921";
        };
        
        os = {
          disabled = false;

          style = "bg:color_m04 fg:color_fg0";

          symbols = {
            # NixOS = "";
            Windows = "󰍲";
            Ubuntu = "󰕈";
            Raspbian = "󰐿";
            Macos = "󰀵";
            Fedora = "󰣛";
            AOSC = "";
            Arch = "󰣇";
            EndeavourOS = "";
            Debian = "󰣚";
          };
        
          username = {
            show_always = true;
            style_user = "bg:color_m04 fg:color_fg0";
            style_root = "bg:color_m04 fg:color_fg0";
            format = " [$user]($style)in ";
          };
          
          directory = {
            style = "fg:color_fg0 bg:color_m07";
            format = "[ $path ]($style)";
            truncation_length = 3;
            truncation_symbol = "…/";
            substitutions = {
              "Documents" = "󰈙 ";
              "Downloads" = " ";
              "Music" = "󰝚 ";
              "Pictures" = " ";
              "Developer" = "󰲋 ";
            };
          };
          
          git_branch = {
            symbol = "";
            style = "bg:color_m02";
            format = "[[ $symbol $branch ](fg:color_fg0 bg:color_m02)]($style)";
          };
          
          git_status = {
          style = "bg:color_m02";
          format = "[[($all_status$ahead_behind )](fg:color_fg0 bg:color_m02)]($style)";
          };
          
          nodejs = {
            symbol = "";
            style = "bg:color_m01";
            format = "[[ $symbol( $version) ](fg:color_fg0 bg:color_m01)]($style)";
          };
          
          c = {
            symbol = " ";
            style = "bg:color_m01";
            format = "[[ $symbol( $version) ](fg:color_fg0 bg:color_m01)]($style)";
          };
          
          cpp = {
            symbol = " ";
            style = "bg:color_m01";
            format = "[[ $symbol( $version) ](fg:color_fg0 bg:color_m01)]($style)";
          };
          
          rust = {
            symbol = "";
            style = "bg:color_m01";
            format = "[[ $symbol( $version) ](fg:color_fg0 bg:color_m01)]($style)";
          };
          
          golang = {
            symbol = "";
            style = "bg:color_m01";
            format = "[[ $symbol( $version) ](fg:color_fg0 bg:color_m01)]($style)";
          };
          
          php = {
            symbol = "";
            style = "bg:color_m01";
            format = "[[ $symbol( $version) ](fg:color_fg0 bg:color_m01)]($style)";
          };
          
          java = {
            symbol = "";
            style = "bg:color_m01";
            format = "[[ $symbol( $version) ](fg:color_fg0 bg:color_m01)]($style)";
          };
          
          kotlin = {
            symbol = "";
            style = "bg:color_m01";
            format = "[[ $symbol( $version) ](fg:color_fg0 bg:color_m01)]($style)";
          };
          
          haskell = {
            symbol = "";
            style = "bg:color_m01";
            format = "[[ $symbol( $version) ](fg:color_fg0 bg:color_m01)]($style)";
          };
          
          python = {
            symbol = "";
            style = "bg:color_m01";
            format = "[[ $symbol( $version) ](fg:color_fg0 bg:color_m01)]($style)";
          };
          
          docker_context = {
            symbol = "";
            style = "bg:color_bg3";
            format = "[[ $symbol( $context) ](fg:#83a598 bg:color_bg3)]($style)";
          };
          
          conda = {
            style = "bg:color_bg3";
            format = "[[ $symbol( $environment) ](fg:#83a598 bg:color_bg3)]($style)";
          };
          
          pixi = {
            style = "bg:color_bg3";
            format = "[[ $symbol( $version)( $environment) ](fg:color_fg0 bg:color_bg3)]($style)";
          };
          
          time = {
            disabled = false;
            time_format = "%R";
            style = "bg:color_bg1";
            format = "[[  $time ](fg:color_fg0 bg:color_bg1)]($style)";
          };
          
          line_break = {
            disabled = false;
          };
          
          character = {
            disabled = false;
            success_symbol = "[](bold fg:color_m03)";
            error_symbol = "[](bold fg:color_m06)";
            vimcmd_symbol = "[](bold fg:color_m03)";
            vimcmd_replace_one_symbol = "[](bold fg:color_m05)";
            vimcmd_replace_symbol = "[](bold fg:color_m05)";
            vimcmd_visual_symbol = "[](bold fg:color_m07)";
          };
        };
      };
    };
  };
}
