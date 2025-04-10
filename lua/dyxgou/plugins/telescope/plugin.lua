return {
   'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = function()
      require("dyxgou.plugins.telescope.config")
    end
}
