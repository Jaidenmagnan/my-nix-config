{ pkgs, lib, ...} {
	imports = [
  	./kitty.nix
	./nvim.nix
	./sway.nix
	./zathura.nix
	./zsh.nix
	./vscode.nix
	./dunst.nix
]
