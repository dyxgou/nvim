return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	ft = "markdown",
	mappings = {
		["<leader>bo"] = {
			"n",
			"<cmd>ObsidianOpen<CR>",
			{ desc = "Open Obsidian" },
		},

		-- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
		--
		["<leader>bp"] = {
			action = function()
				return require("obsidian").util.gf_passthrough()
			end,
			opts = { noremap = false, expr = true, buffer = true },
		},
		-- Toggle check-boxes.
		["<leader>bt"] = {
			action = function()
				return require("obsidian").util.toggle_checkbox()
			end,
			opts = { buffer = true },
		},
		-- Smart action depending on context, either follow link or toggle checkbox.
		["<cr>"] = {
			action = function()
				return require("obsidian").util.smart_action()
			end,
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
		{
			"epwalsh/pomo.nvim",
			version = "*", -- Recommended, use latest release instead of latest commit
			lazy = true,
			cmd = { "TimerStart", "TimerRepeat", "TimerSession" },
			dependencies = {
				-- Optional, but highly recommended if you want to use the "Default" timer
				"rcarriga/nvim-notify",
			},
			opts = {
				-- See below for full list of options 👇
			},
		},
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
