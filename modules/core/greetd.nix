{pkgs, ...}: {
  services.greetd = {
    enable = true;
    vt = 3;

    settings = {
      default_session = {
        user = "ricejustice";
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland";
      };
    };
  };
}
