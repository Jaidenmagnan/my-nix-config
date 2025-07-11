{config, pkgs, lib, ...}:
{
	xdg.configFile."zathura/zathurarc" = lib.mkForce {
		source = ./zathura/zathurarc;
	};

	xdg.configFile."zathura/catppuccin-mocha" = lib.mkForce {
		source = ./zathura/catppuccin-mocha;
	};
}
