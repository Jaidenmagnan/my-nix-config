# Minimal home.nix file for user jaiden
# Place this in the same directory as your flake.nix

{ config, inputs ,pkgs, ... }:

{
  home.username = "jaiden";
  home.homeDirectory = "/home/jaiden";

  nixpkgs.config.allowUnfree = true;

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
  
	programs.obsidian.enable = true;

  home.packages = with pkgs; [
  	neofetch
	inputs.zen-browser.packages.${pkgs.system}.default
    dunst
	sn-pro
	zathura
	slack
	calibre
	qbittorrent
	logisim-evolution
	ncmpcpp
	mpd
	vscode
	obsidian
    lunar-client
	direnv
	yafetch
	firefox
	spotify
	discord
	ghostty
	ruby
	oh-my-zsh
	bun
	heroku
	nodejs
	calibre
  ];

  imports = [
	  ../../apps/apps.nix
  ];


  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;
}

