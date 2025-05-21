# apps/vscode.nix
{ config, lib, pkgs, ... }:

{

	programs.vscode  = {
		enable = true;
	profiles.default.extensions = with pkgs.vscode-extensions; [
		arcticicestudio.nord-visual-studio-code
		vscodevim.vim
		yzhang.markdown-all-in-one
		dbaeumer.vscode-eslint
		mhutchie.git-graph
  ];
  
  };

  

  
}
