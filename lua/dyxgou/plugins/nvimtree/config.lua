require("nvim-tree").setup({
	renderer = {
		root_folder_label = false,
		icons = {
			show = {
				folder = true,
			},
			glyphs = {
				default = "󰈚",
				symlink = "",
				folder = {
					default = "",
					empty = "",
					empty_open = "",
					open = "󰷏",
					symlink = "",
					symlink_open = "",
					arrow_open = "󰁃 ",
					arrow_closed = "󱞩 ",
				},
				git = {
					unstaged = "✗",
					staged = "✓",
					unmerged = "",
					renamed = "➜",
					untracked = "★",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},

	filters = {
		git_ignored = false,
		dotfiles = false,
	},
})

