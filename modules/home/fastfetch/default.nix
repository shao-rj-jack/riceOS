{
  programs.fastfetch = {
    enable = true;

    settings = {
      display = {
        color.output = "37";
        separator = " ➜ ";
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
          type = "os";
          key = "riceOS";
          keyColor = "34";
        }
        {
          type = "kernel";
          key = "├    ";
          keyColor = "34";
        }
        {
          type = "packages";
          key = "├ 󰏖   ";
          keyColor = "34";
        }
        {
          type = "shell";
          key = "└    ";
          keyColor = "34";
        }
        "break"
        {
          type = "host";
          format = "{5} {1} Type {2}";
          key = "PC    ";
          keyColor = "35";
        }
        {
          type = "cpu";
          format = "{1} ({3}) @ {7} GHz";
          key = "├    ";
          keyColor = "35";
        }
        {
          type = "gpu";
          format = "{1} {2} @ {12} GHz";
          key = "├ 󰢮   ";
          keyColor = "35";
        }
        {
          type = "memory";
          key = "├    ";
          keyColor = "35";
        }
        {
          type = "disk";
          key = "├ 󰋊   ";
          keyColor = "35";
        }
        {
          type = "monitor";
          key = "└    ";
          keyColor = "35";
        }
        "break"
        "colors"
      ];
    };
  };
}
