{pkgs, ...}: {
  services.greetd = {
    enable = true;
    vt = 1;

    settings = {
      default_session = {
        user = "greeter";
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --asterisks --cmd Hyprland --greeting \"Welcome! Enter credentials below:\" --remember --time";
      };
    };
  };
}
