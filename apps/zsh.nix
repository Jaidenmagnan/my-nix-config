# apps/zsh.nix
{ config, lib, pkgs, ... }:

{

programs.zsh = {
	enable = true;
	shellAliases = {
		ll = "ls -l";
		update = "sudo nixos-rebuild switch --flake /home/jaiden/nixos";
	};
  };

  programs.zsh.oh-my-zsh = {
    enable = true;
    plugins = [ ];
    theme = "agnoster";
  };

  
}
