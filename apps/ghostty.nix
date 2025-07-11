{config, lib, pkgs, ...}:
{
 xdg.configFile."ghostty/config" = lib.mkForce {
    source = ./ghostty/config;
  };

 xdg.configFile."ghostty/themes/catppuccin-mocha.conf" = lib.mkForce {
    source = ./ghostty/themes/catppuccin-mocha.conf;
  };


}
