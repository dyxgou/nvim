return {
	"ggandor/leap.nvim",
	dependencies = {
		"tpope/vim-repeat",
	},
	lazy = false,
	init = function()
		require("leap").create_default_mappings()
	end,
}
