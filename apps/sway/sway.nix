# apps/sway.nix
{ config, lib, pkgs, ... }:

{
  # Enable Sway
  wayland.windowManager.sway = {
    enable = true;
    
    # This tells Home Manager to not generate a config file
    # and instead use the one we provide
    package = null;
    extraConfig = "";
    config = null;
    
    # Wrappers for GTK applications
    wrapperFeatures.gtk = true;
  };
  
    xdg.configFile."sway/config" = lib.mkForce {
    source = ./config;
  };
  
  }
