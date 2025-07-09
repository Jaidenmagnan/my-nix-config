# apps/nvim.nix
{ config, lib, pkgs, ... }:

{
	xdg.configFile.nvim.source = ./nvim;
};
  
