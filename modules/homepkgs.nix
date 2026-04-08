{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    # Adds the 'hello' command to your environment. It prints a friendly "Hello, world!" when run.
    hello
    nh
    nix-output-monitor
    nvd
  ];

}
