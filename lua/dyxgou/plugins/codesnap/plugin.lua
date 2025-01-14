return {
	"mistricky/codesnap.nvim",
	build = "make",
	keys = {
		{ "<leader>cc", "<cmd>CodeSnap<cr>", mode = "v", desc = "Save selected code snapshot into clipboard" },
	},
	lazy = false,

	config = function()
		require("codesnap").setup({
			title = "@dyxgou",
			save_path = "~/Pictures",
			watermark = "",
			has_breadcrumbs = true,
			has_line_number = true,
		})
	end,
}
