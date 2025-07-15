---@module 'blink.cmp'
---@type blink.cmp.Config
local options = {
	snippets = {
		preset = "luasnip",
	},
	keymap = {
		["<C-e>"] = { "hide", "fallback" },
		["<CR>"] = { "accept", "fallback_to_mappings" },
		["<C-k>"] = { "show", "show_documentation", "hide_documentation" },

		["<Tab>"] = {
			"select_next",
			"fallback",
		},
		["<S-Tab>"] = { "select_prev", "fallback" },

		["<C-b>"] = { "scroll_documentation_up", "fallback" },
		["<C-f>"] = { "scroll_documentation_down", "fallback" },
	},

	appearance = {
		nerd_font_variant = "mono",
		kind_icons = {
			Text = "",
			Method = "󰆧",
			Function = "󰊕",
			Constructor = "",
			Field = "󰇽",
			Variable = "",
			Class = "󰠱",
			Interface = "",
			Module = "",
			Property = "󰜢",
			Unit = "",
			Value = "󰎠",
			Enum = "",
			Keyword = "󰌋",
			Snippet = "",
			Color = "󰏘",
			File = "󰈙",
			Reference = "",
			Folder = "󰉋",
			EnumMember = "",
			Constant = "󰏿",
			Struct = "",
			Event = "",
			Operator = "󰆕",
			TypeParameter = "󰅲",
		},
	},

	completion = {
		keyword = { range = "full" },
		documentation = { auto_show = false },

		menu = {
			border = "rounded",
			draw = {
				treesitter = { "lsp" },
				padding = { 1, 1 },
				columns = {
					{ "label", "label_description", gap = 1 },
					{ "kind_icon", "kind", gap = 1 },
				},
			},
		},
	},

	sources = {
		default = { "lsp", "path", "snippets", "buffer" },

		per_filetype = {
			sql = { "snippets", "dadbod", "buffer" },
		},
		providers = {
			dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
		},
	},

	fuzzy = { implementation = "prefer_rust" },
}

return options
