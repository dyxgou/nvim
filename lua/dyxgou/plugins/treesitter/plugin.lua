return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
  build = ":TSUpdate",
  opts = function()
    return require "dyxgou.plugins.treesitter.config"
  end,
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
