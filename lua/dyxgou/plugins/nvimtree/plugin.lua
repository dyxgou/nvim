return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		{
			"DaikyXendo/nvim-material-icon",
		},
	},
	config = function()
		require("dyxgou.plugins.nvimtree.config")
	end,
}
