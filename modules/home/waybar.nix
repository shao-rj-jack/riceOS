{
  pkgs,
  lib,
  ...
}: let
  betterTransition = "all 0.3s cubic-bezier(.55,-0.68,.48,1.682)";
in {
  programs.waybar = {
    package = pkgs.waybar;
    enable = true;

    settings = [
      {
        layer = "top";
        position = "top";
        modules-center = ["hyprland/workspaces"];
        modules-left = [
          "custom/exit"
          "tray"
        ];
        modules-right = [
          "cpu"
          "memory"
          "battery"
          "clock"
        ];

        "hyprland/workspaces" = {
          format = "{name}";
          on-scroll-up = "hyprctl dispatch workspace e+1";
          on-scroll-down = "hyprctl dispatch workspace e-1";

          format-icons = {
            default = " ";
            active = " ";
            urgent = " ";
          };
        };

        "custom/exit" = {
          tooltip = false;
          format = "";
          on-click = "sleep 0.1 && wlogout";
        };

        "tray" = {
          spacing = 12;
        };

        "cpu" = {
          interval = 5;
          format = " {usage:2}%";
          tooltip = true;
        };

        "memory" = {
          interval = 5;
          format = " {}%";
          tooltip = true;
        };

        "battery" = {
          on-click = "";
          tooltip = false;
          format = "{icon} {capacity}%";
          format-charging = "󰂄 {capacity}%";
          format-plugged = "󱘖 {capacity}%";

          format-icons = [
            "󰁺"
            "󰁻"
            "󰁼"
            "󰁽"
            "󰁾"
            "󰁿"
            "󰂀"
            "󰂁"
            "󰂂"
            "󰁹"
          ];

          states = {
            warning = 30;
            critical = 15;
          };
        };

        "clock" = {
          format = '' {:L%I:%M %p}'';
          tooltip = true;
          tooltip-format = "<big>{:%A, %d.%B %Y }</big>\n<tt><small>{calendar}</small></tt>";
        };
      }
    ];

    style = ''
      * {
        font-family: JetBrainsMono Nerd Font Mono;
        font-size: 18px;
        border-radius: 0px;
        border: none;
        min-height: 0px;
      }

      window#waybar {
        background: rgba(0, 0, 0, 0);
      }

      #workspaces {
        color: #FFFFFF;
        background: #FF0000;
        margin: 4px 4px;
        padding: 5px 5px;
        border-radius: 16px;
      }

      #workspaces button {
        font-weight: bold;
        padding: 0px 5px;
        margin: 0px 3px;
        border-radius: 16px;
        color: #FFFFFF;
        background: #00FF00;
        opacity: 0.5;
        transition: ${betterTransition};
      }

      #workspaces button.active {
        font-weight: bold;
        padding: 0px 5px;
        margin: 0px 3px;
        border-radius: 16px;
        color: #FFFFFF;
        background: #0000FF;
        opacity: 1.0;
        min-width: 40px;
      }

      #workspaces button.hover {
        font-weight: bold;
        border-radius: 16px;
        color: #FFFFFF;
        background: #F9C74F;
        opacity: 0.8;
        transition: ${betterTransition};
      }

      tooltip {
        border: 1px solid #FFFFFF;
        border-radius: 12px;
      }

      tooltip label {
        color: #FFFFFF;
      }

      #custom-exit {
        color: #FFFFFF;
        background: #FF0000;
        font-size: 22px;
        margin: 0px;
        padding: 0px 10px 0px 10px;
        border-radius: 16px 16px 16px 16px;
      }

      #tray {
        font-weight: bold;
        color: #FFFFFF;
        background: #FF0000;
        margin: 4px 0px;
        margin-left: 7px;
        border-radius: 8px 8px 8px 8px;
        padding: 0px 18px;
      }

      #cpu, #memory, #battery {
        font-weight: bold;
        color: #FFFFFF;
        background: #FF0000;
        margin: 4px 0px;
        margin-right: 7px;
        border-radius: 8px 8px 8px 8px;
        padding: 0px 18px;
      }

      #clock {
        font-weight: bold;
        font-size: 16px;
        color: #FFFFFF;
        background: #FF0000;
        margin: 0px;
        padding: 0px 5px 0px 5px;
        border-radius: 16px 16px 16px 16px;
      }
    '';
  };
}
