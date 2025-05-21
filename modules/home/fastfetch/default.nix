{
  programs.fastfetch = {
    enable = true;

    settings = {
      display = {
        color.output = "37";
        separator = " -> ";
      };

      logo = {
        source = ./nixos.png;
        type = "kitty-direct";
        height = 10;
        width = 20;
        padding = {
          top = 2;
          left = 2;
        };
      };

      modules = [
        "break"
        {
          type     = "os";
          key      = "riceOS";
          keyColor = "34";
        }
        {
          type     = "kernel";
          key      = "|     ";
          keyColor = "34";
        }
        {
          type     = "packages";
          key      = "|     ";
          keyColor = "34";
        }
        {
          type     = "shell";
          key      = "|     ";
          keyColor = "34";
        }
      ];
    };
  };
}
