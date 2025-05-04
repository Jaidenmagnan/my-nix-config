# apps/kitty.nix
{ config, lib, pkgs, ... }:


{
  programs.kitty = {
    enable = true;
    
    # Basic settings
    settings = {
      # Font configuration
      font_family = "JetBrains Mono";
      font_size = 12;
      
      # Window settings
      window_padding_width = 8;
      hide_window_decorations = "no";
      confirm_os_window_close = 0;

      
      # Tab bar
      tab_bar_style = "powerline";
      tab_powerline_style = "slanted";
      active_tab_foreground = "#000";
      active_tab_background = "#eee";
      inactive_tab_foreground = "#444";
      inactive_tab_background = "#999";

      # Nord Theme Colors
      foreground = "#D8DEE9";
      background = "#2E3440";
      selection_foreground = "#000000";
      selection_background = "#FFFACD";
      cursor = "#81A1C1";
      
      # Nord Colors
      color0 = "#3B4252";
      color1 = "#BF616A";
      color2 = "#A3BE8C";
      color3 = "#EBCB8B";
      color4 = "#81A1C1";
      color5 = "#B48EAD";
      color6 = "#88C0D0";
      color7 = "#E5E9F0";
      color8 = "#4C566A";
      color9 = "#BF616A";
      color10 = "#A3BE8C";
      color11 = "#EBCB8B";
      color12 = "#81A1C1";
      color13 = "#B48EAD";
      color14 = "#8FBCBB";
      color15 = "#ECEFF4";
      
      # URL handling
      url_color = "#0087bd";
      url_style = "curly";
      
      # Bell
      enable_audio_bell = false;
    };
    
    # Keyboard shortcuts
    keybindings = {
      "ctrl+shift+c" = "copy_to_clipboard";
      "ctrl+shift+v" = "paste_from_clipboard";
      "ctrl+shift+t" = "new_tab";
      "ctrl+shift+q" = "close_tab";
      "ctrl+shift+l" = "next_layout";
      "ctrl+shift+equal" = "increase_font_size";
      "ctrl+shift+minus" = "decrease_font_size";
      "ctrl+shift+backspace" = "restore_font_size";
    };
    
    # Extra configuration if needed
    extraConfig = ''
      # Any additional configuration that doesn't fit into the above
      # For example, advanced cursor customization
      cursor_shape beam
      cursor_blink_interval 0.5
      
      # Shell integration
      shell_integration enabled
    '';
  };
}
