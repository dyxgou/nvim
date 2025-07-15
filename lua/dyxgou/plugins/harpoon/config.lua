local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

require("harpoon").setup({
  tabline = true,
})
require("telescope").load_extension("harpoon")

local map = vim.keymap.set

map("n", "<Tab>", ui.nav_next, { desc = "Go to next" })
map("n", "<S-Tab>", ui.nav_prev, { desc = "Go to previous" })
map("n", "<leader>h", mark.add_file, { desc = "add file to harpoon" })
map("n", "<leader>m", ui.toggle_quick_menu, { desc = "Toggle quick harpoon menu" })

-- Enter specific files
local go_to = function(file)
  map("n", "<leader>" .. file, function()
    ui.nav_file(file)
  end, { desc = "Go to " .. file .. " file" })
end

for i = 1, 9, 1 do
  go_to(i)
end
