return {
  "mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
	},

	config = function()
    require("dyxgou.plugins.dap.config")
	end,
}
