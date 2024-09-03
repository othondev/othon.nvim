return {
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "addons.custom.lspconfig"
    end,
  },
  ["stevearc/conform.nvim"] = {
    event = "BufWritePre",
    config = function()
      require "addons.custom.conform"
    end,
  },
  ["nvim-neo-tree/neo-tree.nvim"] = {
    lazy = false,
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",
    },
    config = function()
      require "addons.custom.neo-tree"
    end,
  },
  ["tpope/vim-fugitive"] = { lazy = false },
  ["nvim-telescope/telescope.nvim"] = {
    config = function()
      require "addons.custom.telescope"
    end,
  },
  ["sindrets/diffview.nvim"] = { lazy = false },
}
