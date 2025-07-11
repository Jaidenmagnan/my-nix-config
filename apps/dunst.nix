{ config, lib, pkgs, ... }:
{
  services.dunst = {
    enable = true;
    settings = {
      global = {
        frame_color = "#b4befe";
        separator_color = "frame";
        highlight = "#b4befe";
      };
      urgency_low = {
        background = "#1e1e2e";
        foreground = "#cdd6f4";
      };
      urgency_normal = {
        background = "#1e1e2e";
        foreground = "#cdd6f4";
      };
      urgency_critical = {
        background = "#1e1e2e";
        foreground = "#cdd6f4";
        frame_color = "#fab387";
      };
    };
  };
}
