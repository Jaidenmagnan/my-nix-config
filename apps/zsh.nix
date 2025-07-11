# apps/zsh.nix
{ config, lib, pkgs, ... }:

{

	programs.zsh = {
		enable = true;
		shellAliases = {
			ll = "ls -l";
			update = "sudo nixos-rebuild switch --flake /home/jaiden/my-nix-config";
			dcu = "sudo docker compose up";
			dcd = "sudo docker compose down";
			bot-logs = "heroku logs --tail --app neetcoder-production";
		};
	  	oh-my-zsh = {
	    	enable = true;
	    	plugins = ["git" "direnv"];
	    	theme = "robbyrussell";
	  	};
	};
}
