return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		{
			"windwp/nvim-autopairs",
			event = "InsertEnter",
			config = true,
		},
	},

	config = function()
		require("dyxgou.plugins.lsp.config")
		require("dyxgou.plugins.lsp.uiconfig")
	end,
}
