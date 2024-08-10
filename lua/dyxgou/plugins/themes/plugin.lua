return {
  "sho-87/kanagawa-paper.nvim",
  dependencies = {
    "shaunsingh/nord.nvim",
    "folke/tokyonight.nvim",
    "catppuccin/nvim",
    "savq/melange-nvim"
  },
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme catppuccin")
  end
}

