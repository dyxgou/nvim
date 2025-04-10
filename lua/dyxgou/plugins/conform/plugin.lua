return {
  'stevearc/conform.nvim',
  event = "BufWritePre",
  opts = function ()
    return require("dyxgou.plugins.conform.config")
  end,
  config = function (_, opts)
    require("conform").setup(opts)
  end
}
