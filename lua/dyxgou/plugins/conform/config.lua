return {
  format = {
    stop_after_first = true
  },
	formatters_by_ft = {
		lua = { "stylua", "lua_ls" },
		go = { "goimports", "gofmt", "golines", "gofumpt" },
		javascript = { { "prettierd", "prettier" } },
		typescript = { { "prettierd", "prettier" } },
		typescriptreact = { { "prettierd", "prettier" } },
		javascriptreact = { { "prettierd", "prettier" } },
		astro = { { "prettier" } },
		godot = { "gdformat" },
		python = function(bufnr)
			if require("conform").get_formatter_info("ruff_format", bufnr).available then
				return { "ruff_format" }
			else
				return { "isort", "black" }
			end
		end,
		["*"] = { "codespell" },
		["_"] = { "trim_whitespace" },
	},
	format_on_save = {
		lsp_fallback = true,
		timeout_ms = 500,
	},
	format_after_save = {
		lsp_fallback = true,
	},

	formatters = {
		prettier = {
			ft_parsers = {
				astro = "prettier",
			},
		},
	},
}
