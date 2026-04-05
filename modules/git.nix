{ config, ... }:

{

  programs.git = {
    enable = true;
    userName = "unrezz";
    userEmail = "mikeypixel87@gmail.com";
      aliases = {
        pu = "push";
        co = "checkout";
        cm = "commit";
      };
  };

}
