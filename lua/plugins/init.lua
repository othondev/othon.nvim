return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "plugins.custom.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "plugins.custom.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
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
        "markdown",
      },
    },
  },

  {
    "stevearc/oil.nvim",
    dependencies = { "echasnovski/mini.icons" },
  },

  {
    "tpope/vim-fugitive",
    cmd = { "G", "Git", "Gdiffsplit" },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",
    },
    config = function()
      require("neo-tree").setup()
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require "plugins.custom.telescope"
    end,
  },
}
