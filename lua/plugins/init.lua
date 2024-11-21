return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
      -- Configuración básica de Mason
      require("mason").setup {
        ui = {
          icons = {
            package_installed = "",
            package_pending = "⊙",
            package_uninstalled = "⦸",
          },
        },
      }

      -- Configuración de mason-tool-installer
      require("mason-tool-installer").setup {
        ensure_installed = {
          "basedpyright",
          "black",
          -- "mypy",
          -- "ruff",
          -- "debugpy",
          "prettier",
        },
        run_on_start = true, -- Forzar instalación al inicio
      }
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",

    opts = {
      view = {

        width = 30, -- or 30
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "python",
      },
    },
  },
  {
    "folke/trouble.nvim",
    lazy = false,
    config = function()
      require("trouble").setup {
        opts = {},
        cmd = "Trouble",
      }
    end,
  },
  {
    "tpope/vim-fugitive",
    cmd = {
      "G",
      "Git",
      "Gdiffsplit",
      "Gread",
      "Gwrite",
      "Ggrep",
      "GMove",
      "GDelete",
      "GBrowse",
      "GRemove",
      "GRename",
      "Glgrep",
      "Gedit",
    },
    ft = { "fugitive" },
  },
}
