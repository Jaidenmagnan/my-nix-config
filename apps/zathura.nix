{config, lib, pkgs, ...};

{
	xdg.configFile."zathura/zathurarc" = lib.mkForce {
		source = ./zathura/zathurarc;

	};
}
