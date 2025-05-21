{
  programs.fastfetch = {
    enable = true;

    settings = {
      display = {
        color = {
          keys = "35";
          output = "95";
        };
      };

      logo = {
        source = ./nixos.png;
        # type = "kitty-direct";
        height = 10;
        width = 20;
        padding = {
          top = 2;
          left = 2;
        };
      };
    };
  };
}
