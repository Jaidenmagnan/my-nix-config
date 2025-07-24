# apps/zsh.nix
{ config, lib, pkgs, ... }:

{

	programs.zsh = {
		enable = true;
		shellAliases = {
			ll = "ls -l";
			update-pc = "sudo nixos-rebuild switch --flake ~/my-nix-config#pc";
			update-laptop = "sudo nixos-rebuild switch --flake ~/my-nix-config#laptop";
			dcu = "sudo docker compose up";
			dcd = "sudo docker compose down";
			bot-logs = "heroku logs --tail --app neetcoder-production";
			nvf = "nvim \"$(fzf)\"";
		};
	  	oh-my-zsh = {
	    	enable = true;
	    	plugins = ["git" "direnv"];
	    	theme = "robbyrussell";
	  	};
	};
}
