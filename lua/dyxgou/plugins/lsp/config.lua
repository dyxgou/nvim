require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"rust_analyzer",
		"bashls",
		"ruff",
		"tsserver",
		"eslint",
		"tailwindcss",
	},
})

local on_attach = require("dyxgou.plugins.lsp.on_attach").on_attach
local lsp = require("lspconfig")
local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

local languages = {
	"lua_ls",
	"tsserver",
	"tailwindcss",
	"astro",
	"pyright",
	"eslint",
	"gdscript",
	"cssls",
	"kotlin_language_server",
	"gopls",
	"jdtls",
}

for _, language in ipairs(languages) do
	lsp[language].setup({
		on_attach = on_attach,
		capabilities = lsp_capabilities,
	})
end

lsp.emmet_language_server.setup({
	ft = { "typescript", "javascript", "javascriptreact", "typescriptreact", "css" },
	on_attach = on_attach,
	capabilities = lsp_capabilities,
})
