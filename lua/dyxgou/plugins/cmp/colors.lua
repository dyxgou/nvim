-- More sophisticated color setup
local function setup_blink_colors()
	local colors = {
		Text = "#D4D4D4",
		Method = "#B5CEA8",
		Function = "#DCDCAA",
		Constructor = "#4EC9B0",
		Field = "#9CDCFE",
		Variable = "#9CDCFE",
		Class = "#4EC9B0",
		Interface = "#4EC9B0",
		Module = "#4EC9B0",
		Property = "#9CDCFE",
		Keyword = "#569CD6",
		Snippet = "#D4D4D4",
		Enum = "#4EC9B0",
		Constant = "#4FC1FF",
	}

	for kind, color in pairs(colors) do
		vim.api.nvim_set_hl(0, "BlinkCmpKind" .. kind, {
			fg = color,
			bold = true,
		})
	end

	-- Menu styling
	vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = "#1e1e1e", fg = "#d4d4d4" })
	vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { fg = "#3c3c3c" })
	vim.api.nvim_set_hl(0, "BlinkCmpMenuSel", { bg = "#094771", fg = "#ffffff" })
end

setup_blink_colors()
