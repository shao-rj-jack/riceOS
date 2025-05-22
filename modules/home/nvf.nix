{
  programs.nvf = {
    enable = true;

    settings.vim = {
      viAlias = false;
      vimAlias = false;
      lineNumberMode = "number";
      enableLuaLoader = true;
      preventJunkFiles = true;

      options = {
        tabstop = 4;
        shiftwidth = 2;
      };

      clipboard = {
        enable = true;
        registers = "unnamedplus";
        providers = {
          wl-copy.enable = true;
          xsel.enable = true;
        };
      };

      diagnostics = {
        enable = true;
        config = {
          virtual_lines.enable = true;
          underline = true;
        };
      };

      spellcheck = {
        enable = true;
        languages = ["en"];
        programmingWordlist.enable = true;
      };

      visuals = {
        nvim-web-devicons.enable = true;
        nvim-cursorline.enable = true;
        cinnamon-nvim.enable = true;
        # fidget-nvim.enable = true;
        highlight-undo.enable = true;
        indent-blankline.enable = true;
        rainbow-delimiters.enable = true;
      };

      filetree.neo-tree.enable = true;
      telescope.enable = true;

      keymaps = [
        {
          key = "<leader>e";
          mode = ["n"];
          action = "<cmd>Neotree toggle<cr>";
          desc = "Toggle file browser";
        }
        {
          key = "<leader>ff";
          mode = ["n"];
          action = "<cmd>Telescope find_files<cr>";
          desc = "Search files by name";
        }
        {
          key = "<leader>lg";
          mode = ["n"];
          action = "<cmd>Telescope live_grep<cr>";
          desc = "Search files by content";
        }
      ];
    };
  };
}
