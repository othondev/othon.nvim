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
    "tpope/vim-fugitive",
    cmd = { "G", "Git", "Gdiffsplit" },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = false,
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",
    },
    config = function()
      require "plugins.custom.neo-tree"
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require "plugins.custom.telescope"
    end,
  },
}
