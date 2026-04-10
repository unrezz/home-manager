{ config, pkgs, ... }:

{
  programs.oh-my-posh = {

    enable = true;

    settings = {

      "$schema" = "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/schema.json";

      final_space = true;

      version = 4;
  
      palette = {
        col01  = "#FFddbb";
        col02  = "#cc3802";
        col03  = "#110907";
        col04  = "#222222";
        col05  = "#444444";
        col06  = "#666666";
        col07  = "#888888";
        col08  = "#aaaaaa";
      };
  
      blocks = [
        {
          alignment = "left";
          type = "rprompt";
          segments = [
            {
              type = "text";
              style = "diamond";
              leading_diamond = "";
              foreground = "p:col01";
              background = "p:col02";
              template = "{{ if .Env.PNPPSHOST }}  {{ .Env.PNPPSHOST }} {{ end }}";
            }
            {
              type = "text";
              style = "powerline";
              foreground = "p:col01";
              background = "p:col03";
              powerline_symbol = "";
              template = "{{ if .Env.PNPPSSITE }}  {{ .Env.PNPPSSITE }}{{ end }}";
            }
            {
              type = "text";
              style = "diamond";
              trailing_diamond = "";
              foreground = "p:col01";
              background = "p:col03";
              template = "{{ if .Env.PNPPSSITE }} {{ end }}";
            }
          ];
        }
        {
          alignment = "left";
          type = "prompt";
          segments = [
            {
              type = "session";
              style = "diamond";
              leading_diamond = "";
              background = "p:col04";
              foreground = "p:col01";
              template = "{{ .UserName }}@{{ .HostName }} ";
            }
            {
              type = "path";
              style = "powerline";
              powerline_symbol = "";
              background = "p:col05";
              foreground = "p:col01";
              template = "  {{ .Path }} ";
              options = {
                # style = "folder";
                style = "agnoster_full";
              };
            }
            {
              type = "node";
              style = "powerline";
              powerline_symbol = "";
              background = "p:col07";
              foreground = "p:col01";
              template = "  {{ if .PackageManagerIcon }}{{ .PackageManagerIcon }} {{ end }}{{ .Full }} ";
            }
            {
              type = "node";
              style = "powerline";
              powerline_symbol = "";
              background = "p:col07";
              foreground = "p:col01";
              template = "  {{ if .PackageManagerIcon }}{{ .PackageManagerIcon }} {{ end }}{{ .Full }} ";
            }

          ];
        }

        {
          alignment = "right";
          type = "prompt";
          segments = [
            {
              type = "time";
              style = "diamond";
              leading_diamond = "";
              background = "p:col04";
              foreground = "p:col01";
              template = "   {{ .CurrentDate | date .Format }} ";
              options = {
                time_format = "15:04";
              };
            }
            {
              type = "git";
              style = "powerline";
              powerline_symbol = "";
              background = "p:col03";
              foreground = "p:col01";
              template = " ➜   {{ .HEAD }}{{ if gt .StashCount 0 }}  {{ .StashCount }}{{ end }} ";
              options = {
                branch_icon = " ";
                fetch_status = false;
                fetch_upstream_icon = true;
              };
            }
            {
              type = "os";
              style = "powerline";
              powerline_symbol = "";
              background = "p:col02";
              foreground = "p:col01";
              template = " {{ if .WSL }}WSL at {{ end }}{{.Icon }} ";
            }

          ];
        }
      ];
    };
  };
}
