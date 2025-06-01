{config, ...}: {
  services.swaync = {
    enable = true;

    settings = {
      control-center-margin-top = 10;
      control-center-margin-bottom = 10;
      control-center-margin-right = 10;
      control-center-margin-keft = 10;
      fit-to-screen = false;
      control-center-height = 600;

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
        };

        dnd = {
          text = "Do Not Disturb";
        };
      };
    };
  };
}
