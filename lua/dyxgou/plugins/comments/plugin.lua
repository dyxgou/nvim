return {
	"numToStr/Comment.nvim",

	opts = {
		toggler = {
			---Line-comment toggle keymap
			line = "<leader>/",
			---Block-comment toggle keymap
			block = "gbc",
		},
	},

	config = function(_, opts)
		require("Comment").setup(opts)
	end,
}

