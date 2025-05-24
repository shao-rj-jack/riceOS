{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    systemd = {
      enable = true;
      enableXdgAutostart = true;
      variables = ["--all"];
    };

    settings = {
      general = {
        "$modifier" = "SUPER";
      };
      input = {
        kb_layout = "us";
        touchpad = {
          natural_scroll = true;
          disable_while_typing = true;
          scroll_factor = 0.8;
        };
      };
      bind = [
        "$modifier,Return,exec,kitty"
        "$modifier,W,exec,firefox"
      ];
    };
  };
}
