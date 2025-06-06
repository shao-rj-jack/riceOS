# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{
  config,
  pkgs,
  options,
  ...
}: {
  environment.systemPackages = with pkgs; [
    brightnessctl # command to control screen brightness
    greetd.tuigreet # greetd with ui based greeter
    killall # utility to kill all programs that match a condition
    libnotify # needed for notifications
    networkmanagerapplet # ui-based network managing
    nwg-displays # for generating monitor configs
    pamixer # pulseaudio command line mixer
    pavucontrol # for editing audio levels and devices
    playerctl # command to control media players
    wget # tool for fetching file with links
  ];

  imports = [
    ./flatpak.nix
    ./fonts.nix
    ./greetd.nix
    ./hardware-configuration.nix
    ./stylix.nix
  ];

  programs = {
    firefox.enable = true;
    hyprland.enable = true;
    hyprlock.enable = true;
  };

  networking = {
    hostName = "riceOS";
    networkmanager.enable = true;
    timeServers = options.networking.timeServers.default ++ ["pool.ntp.org"];

    firewall = {
      enable = true;

      allowedTCPPorts = [
        22
        80
        443
        59010
        59011
        8080
      ];

      allowedUDPPorts = [
        59010
        59011
      ];
    };
  };

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Set your time zone.
  time.timeZone = "America/Toronto";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_CA.UTF-8";

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.ricejustice = {
    isNormalUser = true;
    description = "ricejustice";
    extraGroups = ["networkmanager" "wheel"];
    packages = with pkgs; [
      #  thunderbird
    ];
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  programs.ssh.enableAskPassword = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?
}
