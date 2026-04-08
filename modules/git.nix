{ config, ... }:

{

  programs.git = {
    enable = true;
    settings = {
      user.name = "unrezz";
      user.email = "mikeypixel87@gmail.com";
      alias = {
        pu = "push";
        co = "checkout";
        cm = "commit";
      };
    };
  };

}
