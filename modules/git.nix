{ config, ... }:

{

  programs.git = {
    enable = true;
    userName = "unrezz";
    userEmail = ""
      aliases = {
        pu = "push";
        co = "checkout";
        cm = "commit";
      };
  };

}
