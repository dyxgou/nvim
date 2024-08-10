return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()
		require("dyxgou.plugins.harpoon.config")
	end,
}
