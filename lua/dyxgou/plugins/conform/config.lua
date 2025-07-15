return {
  default_format_opts = {
    stop_after_first = true,
  },
  formatters_by_ft = {
    lua = { "stylua", "lua_ls" },
    go = { "goimports", "gofmt", "golines", "gofumpt" },
    javascript = { "prettierd", "prettier" },
    typescript = { "prettierd", "prettier" },
    css = { "prettierd", "prettier" },
    typescriptreact = { "prettierd", "prettier" },
    astro = { "prettier" },
    csharp = { "cshapier" },
    javascriptreact = { "prettierd", "prettier" },
    sql = { "sql_formatter" },
    cpp = { "clang-format" },
    godot = { "gdformat" },
    markdown = { "markdownlint" },
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
