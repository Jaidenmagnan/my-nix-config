{config, lib, pkgs}:
{
 xdg.configFile."ghostty/config" = lib.mkForce {
    source = ./ghostty/config;
  };


}
