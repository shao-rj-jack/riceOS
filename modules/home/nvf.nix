{config, ...}: {
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
          underline = true;
        };
      };

      spellcheck = {
        enable = true;
        languages = ["en"];
        programmingWordlist.enable = true;
      };

      lsp = {
        enable = true;
        formatOnSave = true;
        lspkind.enable = false;
        lightbulb.enable = false;
        lspsaga.enable = false;
        trouble.enable = true;
        lspSignature.enable = true;
        otter-nvim.enable = false;
        nvim-docs-view.enable = false;
      };

      languages = {
        enableFormat = true;
        enableTreesitter = true;
        enableExtraDiagnostics = true;

        nix.enable = true;
      };

      visuals = {
        nvim-web-devicons.enable = true;
        nvim-cursorline.enable = true;
        cinnamon-nvim.enable = true;
        fidget-nvim.enable = true;
        highlight-undo.enable = true;
        indent-blankline.enable = true;
        rainbow-delimiters.enable = true;
      };

      statusline.lualine = {
        enable = true;
        theme = "base16";
      };

      git = {
        enable = true;
        gitsigns.enable = true;
        gitsigns.codeActions.enable = false;
      };

      binds = {
        whichKey.enable = true;
        cheatsheet.enable = true;
      };

      notify = {
        nvim-notify.enable = true;
        nvim-notify.setupOpts.background_colour = "#${config.lib.stylix.colors.base01}";
      };

      utility = {
        preview.markdownPreview.enable = true;
        surround.enable = true;
        diffview-nvim.enable = true;
        images.image-nvim.enable = false;
      };

      ui = {
        borders.enable = true;
        noice.enable = true;
        colorizer.enable = true;
        illuminate.enable = true;
        smartcolumn.enable = true;
        fastaction.enable = true;
        breadcrumbs = {
          enable = false;
          navbuddy.enable = false;
        };
      };

      filetree.neo-tree.enable = true;
      telescope.enable = true;
      autopairs.nvim-autopairs.enable = true;
      autocomplete.nvim-cmp.enable = true;
      tabline.nvimBufferline.enable = true;
      treesitter.context.enable = true;

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
        {
          key = "<leader>dt";
          mode = ["n"];
          action = "<cmd>Trouble diagnostics toggle<cr>";
          desc = "Toggle diagnostics list";
        }
      ];
    };
  };
}
