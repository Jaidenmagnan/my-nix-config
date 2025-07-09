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

      # Catppuccin Mocha Theme Colors
	foreground = "#CDD6F4";
	background = "#1E1E2E";
	selection_foreground = "#1E1E2E";
	selection_background = "#F5E0DC";
	cursor = "#F5E0DC";
	
	# Catppuccin Mocha Colors
	color0 = "#45475A";    # Surface1
	color1 = "#F38BA8";    # Red
	color2 = "#A6E3A1";    # Green
	color3 = "#F9E2AF";    # Yellow
	color4 = "#89B4FA";    # Blue
	color5 = "#F5C2E7";    # Pink
	color6 = "#94E2D5";    # Teal
	color7 = "#BAC2DE";    # Subtext1
	color8 = "#585B70";    # Surface2
	color9 = "#F38BA8";    # Red
	color10 = "#A6E3A1";   # Green
	color11 = "#F9E2AF";   # Yellow
	color12 = "#89B4FA";   # Blue
	color13 = "#F5C2E7";   # Pink
	color14 = "#94E2D5";   # Teal
	color15 = "#A6ADC8";   # Subtext0
	
	# URL handling
	url_color = "#89B4FA";
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
