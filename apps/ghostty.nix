{config, lib, pkgs, ...}:
{
 xdg.configFile."ghostty/config" = lib.mkForce {
    source = ./ghostty/config;
  };

 xdg.configFile."ghostty/catppuccin-mocha.conf" = lib.mkForce {
    source = ./ghostty/catppuccin-mocha.conf;
  };


}
