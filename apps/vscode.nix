# apps/vscode.nix
{ config, lib, pkgs, ... }:

{

	programs.vscode  = {
		enable = true;
	extensions = with pkgs.vscode-extensions; [
		arcticicestudio.nord-visual-studio-code
		vscodevim.vim
		yzhang.markdown-all-in-one
  ];
  
  };

  

  
}
