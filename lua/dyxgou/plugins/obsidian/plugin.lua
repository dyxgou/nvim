return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	ft = "markdown",
	keys = {
		["<cr>"] = {
			action = function() end,
			opts = { buffer = true, expr = true },
		},
	},
	event = {
		-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		-- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
		-- refer to `:h file-pattern` for more examples
		"BufReadPre " .. vim.fn.expand("~", "/projects/notes/*.md"),
		"BufNewFile " .. vim.fn.expand("~", "/projects/notes/*.md"),
		-- "BufReadPre path/to/my-vault/*.md",
		-- "BufNewFile path/to/my-vault/*.md",
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		ui = {
			enable = false,
		},
		workspaces = {
			{
				name = "personal",
				path = "~/projects/notes",
			},
		},
		templates = {
			folder = "templates",
		},
	},
}
