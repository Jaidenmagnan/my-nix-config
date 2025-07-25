# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.home-manager
    ];



  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;


  # home manager
  home-manager = {
  	extraSpecialArgs = {inherit inputs; };
	users = {
		jaiden = import ./home.nix;
	};

  };

  hardware.graphics = {
  	enable = true;
  };


  services.gvfs.enable = true;

  programs.zsh.enable = true;
  users.users.jaiden.shell = pkgs.zsh;

  # experimental
  nix.settings.experimental-features = ["nix-command" "flakes"];

  virtualisation.docker.enable = true;


  environment.variables.EDITOR = "nvim";

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

    security.rtkit.enable = true;
  services.pipewire = {
    enable = true; # if not already enabled
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;
  };


  # Set your time zone.
  time.timeZone = "America/New_York";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.jaiden = {
    isNormalUser = true;
    description = "Jaiden Magnan";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  programs.steam.enable = true;
  programs.steam.gamescopeSession.enable = true;
  programs.gamemode.enable = true;

  services.flatpak.enable = true;

  
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget
	flatpak
    xdg-desktop-portal-gtk
	lua
    protonup
	intelephense
    adwaita-icon-theme
    alsa-utils
    neovim
    vlc
    zip
    unzip
    htop
    nodejs
    mangohud
    man-pages
    man-pages-posix
    steam
    clang_16
    clang-tools_16
    fzf
    ripgrep
    nil
    grim
    slurp
    wl-clipboard
    lshw
    nnn
    nemo
    git
	wine
	postgresql
	docker
	heroku
  ];

  # fonts
  fonts.packages = with pkgs; [
  	noto-fonts
	source-code-pro
	

	nerd-fonts.fira-code
	powerline-fonts
  	noto-fonts-cjk-sans
  	noto-fonts-emoji
  	liberation_ttf
  	fira-code
  	fira-code-symbols
  	mplus-outline-fonts.githubRelease
  	dina-font
  	proggyfonts
  ];


  services.gnome.gnome-keyring.enable = true;
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
   };

     # bigger tty fonts

environment = {
  sessionVariables = {
    # General Wayland support
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = "/homes/jaiden/.steam/root/compatabilitytools.d";
    NIXOS_OZONE_WL = "1";
    ELECTRON_OZONE_PLATFORM_HINT = "wayland";
    
    # Specific for Obsidian (from before)
    OBSIDIAN_USE_WAYLAND = "1";
    
    # For Steam/Proton games
    #PROTON_USE_WINED3D = "1";
    #PROTON_ENABLE_NVAPI = "1";
    #DXVK_ENABLE_NVAPI = "1";
    #
    ## Force Wayland for games
    #SDL_VIDEODRIVER = "wayland";
    #__GLX_VENDOR_LIBRARY_NAME = "mesa";
  };
};

   services.greetd = {
	enable = true;
	settings = {
		default_session = {
			command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd 'sway' ";
			user = "greeter";
		};
	};
   };


  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?

}
