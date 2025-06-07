{config, ...}: {
  services.swaync = {
    enable = true;

    settings = {
      control-center-margin-top = 10;
      control-center-margin-bottom = 10;
      control-center-margin-right = 10;
      control-center-margin-keft = 10;
      fit-to-screen = false;
      control-center-height = 700;

      widgets = [
        "title"
        "mpris"
        "volume"
        "backlight"
        "dnd"
        "notifications"
      ];

      widget-config = {
        title = {
          text = "Notification Center";
          clear-all-button = true;
          button-text = "󰆴 Clear All";
        };

        mpris = {
          image-size = 96;
          image-radius = 7;
        };

        volume = {
          label = "󰕾";
        };

        backlight = {
          label = "󰃟";
          device = "amdgpu_bl1";
        };

        dnd = {
          text = "Do Not Disturb";
        };
      };
    };

    style = ''
      * {
        font-family: JetBrainsMono Nerd Font Mono;
        font-weight: bold;
      }

      .close-button {
        background: #${config.lib.stylix.colors.base08};
        color: #${config.lib.stylix.colors.base00};
        border-radius: 5px;
        margin-top: 5px;
        margin-right: 5px;
      }

      .close-button:hover {
        background: #${config.lib.stylix.colors.base05};
        transition: all .15s ease-in-out;
      }

      .notification-row {
        margin: 10px;
        padding: 10px;
      }

      .notification {
        background: transparent;
      }

      .notification.low, .notification.normal {
        border: none;
      }

      .notification.critical {
        border: 1px solid #${config.lib.stylix.colors.base08};
        border-radius: 5px;
      }

      .notification-default-action {
        margin: 0px;
        padding: 0px;
        border-radius: 5px;
      }

      .notification-default-action:not(:only-child) {
        border-bottom-left-radius: 7px;
        border-bottom-right-radius: 7px;
      }

      .notification-action {
        background: #${config.lib.stylix.colors.base00};
        border: 2px solid #${config.lib.stylix.colors.base0B};
        border-top: none;
        border-radius: 5px;
      }

      .notification-default-action:hover,
      .notification-action:hover {
        color: #${config.lib.stylix.colors.base00};
        background: #${config.lib.stylix.colors.base0D};
      }

      .notification-action:first-child {
        border-bottom-left-radius: 10px;
      }

      .notification-action:last-child {
        border-bottom-right-radius: 10px;
      }

      .notification-content {
        padding: 10px;
        margin: 0px;
        border: 2px solid #${config.lib.stylix.colors.base0B};
        border-radius: 5px;
        background: #${config.lib.stylix.colors.base00};
      }

      .summary {
        color: #${config.lib.stylix.colors.base0E};
      }

      .time {
        color: #${config.lib.stylix.colors.base05};
        margin-right: 18px;
      }

      .body {
        font-weight: normal;
        color: #${config.lib.stylix.colors.base05};
      }

      .body-image {
        margin-top: 6px;
        background-color: #${config.lib.stylix.colors.base05};
        border-radius: 5px;
      }

      .inline-reply {
        margin-top: 8px;
      }

      .inline-reply-entry {
        background: #${config.lib.stylix.colors.base00};
        color: #${config.lib.stylix.colors.base05};
        caret-color: #${config.lib.stylix.colors.base05};
        border: 1px solid #${config.lib.stylix.colors.base0B};
        border-radius: 5px;
      }

      .inline-reply-button {
        background: #${config.lib.stylix.colors.base00};
        color: #${config.lib.stylix.colors.base05};
        border: 1px solid #${config.lib.stylix.colors.base0B};
        border-radius: 5px;
      }

      .inline-reply-button:disabled {
        background: initial;
        color: #${config.lib.stylix.colors.base01};
        border: transparent;
      }

      .inline-reply-button:hover {
        background: #${config.lib.stylix.colors.base00};
      }

      .control-center {
        background: #${config.lib.stylix.colors.base00};
        border: 2px solid #${config.lib.stylix.colors.base0B};
        border-radius: 5px;
      }

      .control-center .notification-row:focus,
      .control-center .notification-row:hover {
        opacity: 0.9;
        background: #${config.lib.stylix.colors.base00};
      }

      .blank-window {
        background: alpha(black, 0);
      }

      .widget-title {
        color: #${config.lib.stylix.colors.base05};
        background: #${config.lib.stylix.colors.base00};
        padding: 5px 10px;
        margin: 10px 10px 5px 10px;
        font-size: 1.5rem;
        border-radius: 5px;
      }

      .widget-title>button {
        font-size: 1rem;
        color: #${config.lib.stylix.colors.base05};
        background: #${config.lib.stylix.colors.base00};
        text-shadow: none;
        box-shadow: none;
        border-radius: 5px;
      }

      .widget-title>button:hover {
        color: #${config.lib.stylix.colors.base00};
        background: #${config.lib.stylix.colors.base0D};
      }

      .widget-mpris {
        color: #${config.lib.stylix.colors.base05};
        padding: 5px 10px;
        margin: 10px 10px 5px 10px;
        border-radius: 5px;
      }

      .widget-mpris>box>button {
        border-radius: 5px;
      }

      .widget-mpris-player {
        padding: 5px 10px;
        margin: 10px;
      }

      .widget-mpris-title {
        font-size: 1.25rem;
      }

      .widget-mpris-subtitle {
        font-size: 1.1rem;
      }

      .widget-volume,
      .widget-backlight {
        color: #${config.lib.stylix.colors.base05};
        background: #${config.lib.stylix.colors.base01};
        padding: 5px;
        margin: 10px 10px 5px 10px;
        border-radius: 5px;
        font-size: x-large;
      }

      .widget-volume>box>button {
        background: #${config.lib.stylix.colors.base08};
        border: none;
      }

      .per-app-volume {
        background-color: #${config.lib.stylix.colors.base00};
        padding: 4px 8px 8px;
        margin: 0px 8px 8px;
        border-radius: 5px;
      }

      .widget-dnd {
        background: #${config.lib.stylix.colors.base00};
        color: #${config.lib.stylix.colors.base05};
        padding: 5px 10px;
        margin: 10px 10px 5px 10px;
        border-radius: 5px;
        font-size: large;
      }

      .widget-dnd>switch {
        border-radius: 5px;
        background: #${config.lib.stylix.colors.base00};
      }

      .widget-dnd>switch:hover {
        background: #${config.lib.stylix.colors.base00};
      }

      .widget-dnd>switch:checked {
        background: #${config.lib.stylix.colors.base02};
      }

      .widget-dnd>switch slider {
        background: #${config.lib.stylix.colors.base05};
      }

      .widget-dnd>switch:checked slider {
        background: #${config.lib.stylix.colors.base05};
      }
    '';
  };
}
