return { 
  "lukas-reineke/indent-blankline.nvim", 
  main = "ibl", 
  lazy = false,
  opts = {},
  configs = function()
    require("dyxgou.configs.indent-blankline")
  end
}
