return {
	"saghen/blink.cmp",
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	opts = function()
		require("dyxgou.plugins.cmp.colors")
		return require("dyxgou.plugins.cmp.config")
	end,
	opts_extend = { "sources.default" },
}
