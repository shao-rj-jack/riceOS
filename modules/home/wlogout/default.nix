{config, ...}: {
  programs.wlogout = {
    enable = true;

    layout = [
      {
        label = "shutdown";
        action = "sleep 1; systemctl poweroff";
        text = "Shutdown (s)";
        keybind = "s";
      }
      {
        label = "reboot";
        action = "sleep 1; systemctl reboot";
        text = "Reboot (r)";
        keybind = "r";
      }
      {
        label = "logout";
        action = "sleep 1; hyprctl dispatch exit";
        text = "Logout (e)";
        keybind = "e";
      }
      {
        label = "suspend";
        action = "sleep 1; systemctl suspend";
        text = "Suspend (s)";
        keybind = "u";
      }
      {
        label = "lock";
        action = "sleep 1; hyprlock";
        text = "Lock (l)";
        keybind = "l";
      }
      {
        label = "hibernate";
        action = "sleep 1; systemctl hibernate";
        text = "Hibernate (h)";
        keybind = "h";
      }
    ];

    style = ''
      * {
        font-family: "JetBrainsMono NF", FontAwesome, sans-serif;
        background-image: none;
        transition: 20ms;
      }

      window {
        background-color: rgba(12, 12, 12, 0.5);
      }

      button {
        color: #${config.lib.stylix.colors.base05};
        font-size: 16px;
        background-repeat: no-repeat;
        background-position: center;
        background-size: 25%;
        background-color: rgba(12, 12, 12, 0.8);
        border: 3px solid #${config.lib.stylix.colors.base01};
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
      }

      button:active, button:hover {
        color: #${config.lib.stylix.colors.base05};
        background-color: rgba(37, 131, 209, 0.8);
        border: 3px solid #${config.lib.stylix.colors.base01};
      }

      #shutdown {
        margin: 10px;
        border-radius: 20px;
        background-image: image(url("icons/shutdown.png"));
      }

      #reboot {
        margin: 10px;
        border-radius: 20px;
        background-image: image(url("icons/reboot.png"));
      }

      #logout {
        margin: 10px;
        border-radius: 20px;
        background-image: image(url("icons/logout.png"));
      }

      #suspend {
        margin: 10px;
        border-radius: 20px;
        background-image: image(url("icons/suspend.png"));
      }

      #lock {
        margin: 10px;
        border-radius: 20px;
        background-image: image(url("icons/lock.png"));
      }

      #hibernate {
        margin: 10px;
        border-radius: 20px;
        background-image: image(url("icons/hibernate.png"));
      }
    '';
  };

  home.file.".config/wlogout/icons" = {
    source = ./icons;
    recursive = true;
  };
}
