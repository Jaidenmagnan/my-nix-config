# Minimal home.nix file for user jaiden
# Place this in the same directory as your flake.nix

{ config, inputs ,pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should manage
  home.username = "jaiden";
  home.homeDirectory = "/home/jaiden";

  nixpkgs.config.allowUnfree = true;

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.11";

    home.pointerCursor = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
      size = 24;
      x11 = {
        enable = true;
        defaultCursor = "Adwaita";
      };
    };

  home.packages = with pkgs; [
  	neofetch
        lunar-client
	yafetch
	firefox
	spotify
	discord
	kitty
	oh-my-zsh
  ];

  imports = [
  	./apps/kitty.nix
	./apps/sway/sway.nix
	./apps/zsh.nix


  ];


  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;
}

