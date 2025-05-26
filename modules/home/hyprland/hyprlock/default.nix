{
  config,
  lib,
  ...
}: let
  inherit (lib) mkIf;

  cfg = config.modules.home.hyprland;
in {
  config = mkIf cfg.enable {
    security.pam.services.hyprlock = {};
  };

  programs.hyprlock = {
    enable = true;

    settings = {
      general = {
        hide_cursor = true;
        grace = 10;
      };

      background = [
        {
          path = "~/riceOS/modules/home/hyprland/images/wooded-bay.jpg";
          blur_passes = 3;
          blur_size = 8;
        }
      ];

      input_field = [
        {
          size = "200, 50";
          position = "0, -80";
          monitor = "";
          dots_center = true;
          fade_on_empty = false;
          font_color = "rgb(CFE6F4)";
          inner_color = "rgb(657DC2)";
          outer_color = "rgb(0D0E15)";
          outline_thickness = 5;
          placeholder_text = "Password...";
          shadow_passes = 2;
        }
      ];
    };
  };
}
