return {
  'stevearc/conform.nvim',
  event = "BufWritePre",
  opts = function ()
    return require("dyxgou.configs.conform")
  end,
  config = function (_, opts)
    require("conform").setup(opts)
  end
}

