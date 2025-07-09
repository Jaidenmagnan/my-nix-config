{ config, lib, pkgs, ... }:
{
  services.dunst = {
    enable = true;
    settings = {
      global = {
        frame_color = "#7287fd";
        separator_color = "frame";
        highlight = "#7287fd";
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
