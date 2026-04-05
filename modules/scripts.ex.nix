{ config, pkgs, ... }:

{

  home.packages = [
    # You can create simple shell scripts inside your configuration. Ex: this adds a command 'my-hello' to your environment:
    (pkgs.writeShellScriptBin "my-hello" ''
      echo "Hello, ${config.home.username}!"
    '')
  ];

}
