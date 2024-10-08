return {
	"sho-87/kanagawa-paper.nvim",
	dependencies = {
		"shaunsingh/nord.nvim",
		"folke/tokyonight.nvim",
		"catppuccin/nvim",
		"savq/melange-nvim",
		{
			"rose-pine/neovim",
			name = "rose-pine",
			config = function()
				require("rose-pine").setup({
					variant = "moon",
					highlight_groups = {

						-- Blend colours against the "base" background
						CursorLine = { bg = "foam", blend = 10 },
						StatusLine = { fg = "love", bg = "love", blend = 10 },
					},
				})
			end,
		},
	},
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme rose-pine")
	end,
}
