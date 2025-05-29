{
  config,
  pkgs,
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
          "custom/startmenu"
          "tray" # nm-applet opens here
          "pulseaudio"
        ];

        modules-right = [
          "cpu"
          "memory"
          "battery"
          "clock"
        ];

        "hyprland/workspaces" = {
          format = "{name}";
          show-special = true;
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

        "custom/startmenu" = {
          tooltip = false;
          format = "";
          on-click = "sleep 0.1 && rofi-launcher";
          #on-click = "sleep 0.1 && nwg-drawer -mb 200 -mt 200 -mr 200 -ml 200";
        };

        "tray" = {
          spacing = 12;
        };

        "pulseaudio" = {
          format = "{icon} {volume}% {format_source}";
          format-bluetooth = "{icon} {volume}% {format_source}";
          format-bluetooth-muted = "{icon}  {format_source}";
          format-muted = " {format_source}";
          format-source = " {volume}%";
          format-source-muted = "";

          format-icons = {
            headphone = "";
            hands-free = "";
            headset = "";
            phone = "";
            portable = "";
            car = "";
            default = [
              ""
              ""
              ""
            ];
          };
          on-click = "sleep 0.1 && pavucontrol";
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
        color: #${config.lib.stylix.colors.base00};
        background: #${config.lib.stylix.colors.base03};
        margin: 4px 4px;
        padding: 5px 5px;
        border-radius: 16px;
      }

      #workspaces button {
        font-weight: bold;
        padding: 0px 5px;
        margin: 0px 3px;
        border-radius: 16px;
        color: #${config.lib.stylix.colors.base00};
        background: #${config.lib.stylix.colors.base02};
        opacity: 0.5;
        transition: ${betterTransition};
      }

      #workspaces button.active {
        font-weight: bold;
        padding: 0px 5px;
        margin: 0px 3px;
        border-radius: 16px;
        color: #${config.lib.stylix.colors.base00};
        background: #${config.lib.stylix.colors.base06};
        opacity: 1.0;
        min-width: 40px;
      }

      tooltip {
        border: 1px solid #${config.lib.stylix.colors.base03};
        border-radius: 12px;
      }

      tooltip label {
        color: #FFFFFF;
      }

      #custom-exit {
        color: #${config.lib.stylix.colors.base00};
        background: linear-gradient(#${config.lib.stylix.colors.base0C}, #${config.lib.stylix.colors.base0D});
        font-size: 22px;
        margin: 0px;
        padding: 0px 10px 0px 10px;
        border-radius: 16px 16px 16px 16px;
      }

      #custom-startmenu, #tray, #pulseaudio {
        font-weight: bold;
        color: #${config.lib.stylix.colors.base04};
        background: #${config.lib.stylix.colors.base01};
        margin: 4px 0px;
        margin-left: 7px;
        border-radius: 8px 8px 8px 8px;
        padding: 0px 18px;
      }

      #cpu, #memory, #battery {
        font-weight: bold;
        color: #${config.lib.stylix.colors.base04};
        background: #${config.lib.stylix.colors.base01};
        margin: 4px 0px;
        margin-right: 7px;
        border-radius: 8px 8px 8px 8px;
        padding: 0px 18px;
      }

      #clock {
        font-weight: bold;
        font-size: 16px;
        color: #${config.lib.stylix.colors.base00};
        background: linear-gradient(90deg, #${config.lib.stylix.colors.base0D}, #${config.lib.stylix.colors.base0C});
        margin: 0px;
        padding: 0px 5px 0px 5px;
        border-radius: 16px 16px 16px 16px;
      }
    '';
  };
}
