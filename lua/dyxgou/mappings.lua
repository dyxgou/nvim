local map = vim.keymap.set
local nomap = vim.keymap.del

-- Nvim Keybindings
map({ "n", "i", "v" }, "<C-z>", "<cmd>u<CR>", { desc = "Go back in the file" })
map({ "n", "i", "v" }, "<C-s>", "<cmd>wa<cr>", { desc = "Save all files" })
map("n", "Q", "<nop>")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "<leader>x", "<cmd>wq<CR>", { desc = "Close and save the buffer" })
map("n", "J", "m`o<Esc>``", { desc = "Create a line under", silent = true })

map("n", "+", "<C-a>", { desc = "Increment a number" })
map("n", "-", "<C-x>", { desc = "Decrement a number" })

--Normal Keybindings
map("n", "<leader>e", "$a", { desc = "Go to the end of the line" })
map("n", "<leader>j", "_", { desc = "Go to the beginning of the line" })
map("n", "<C-a>", "ggVG")

-- Copy Stuff around
map("n", "<leader>y", '"+y', { desc = "Use pc clipboard" })

-- Windows
map("n", "<leader>a", "<C-w><Left>", { desc = "Move between windows" })
map("n", "<leader>d", "<C-w><Right>", { desc = "Move to the window in the right" })
map("n", "<leader>s", "<C-w><Down>", { desc = "Move to the window in the down" })
-- Move code
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move a line of code upwards" })
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move a line of code downwards" })

-- Neotree
map("n", "<C-b>", "<cmd>NvimTreeToggle right<CR>", { desc = "Open up neotree" })
--Telescope

local builtin = require("telescope.builtin")

map("n", "<leader>pf", builtin.find_files, { desc = "Find files in Telescope" })
map("n", "<leader>ps", builtin.live_grep, { desc = "Find words in Telescope" })

--- Obsidian

map("n", "<leader>oo", "<cmd>ObsidianOpen<CR>", { desc = "Open Obsidian" })
map("n", "<leader>op", function()
	return require("obsidian").util.gf_passthrough()
end, { desc = "Open obisidian wiki link" })

map("n", "<leader>ot", function()
	return require("obsidian").util.toggle_checkbox()
end, { desc = "Toggle obsidian checkbox" })

map("n", "<cr>", function()
	return require("obsidian").util.smart_action()
end, { desc = "Toggle obsidian checkbox" })

--- Keys

map("n", "<C-e>", "A{}", { desc = "Put brackets to the end of the line" })
map("n", "<C-q>", "A=", { desc = "Put equals at the end of the line" })
--- Git

map("n", "<leader>ga", "<cmd>Git add .<CR>", { desc = "Git add the curret file" })

map(
	"n",
	"<leader>gp",
	"<cmd>Gitsigns preview_hunk_inline<CR>",
	{ desc = "Show a preview of the changes made in the file" }
)

map(
	"n",
	"<leader>gb",
	"<cmd>Gitsigns toggle_current_line_blame<CR>",
	{ desc = "Show a preview of the changes made in the file" }
)

map("n", "G", "Gzz", { desc = "Go to the bottom of the file and center it" })

-- Timer

map("n", "<leader>tc", "<cmd>TimerSession pomodoro<CR>", { desc = "Creates a pomodoro timer" })
map("n", "<leader>th", "<cmd>TimerHide<CR>", { desc = "Hides the timer" })

-- Mappings

nomap("n", "gcc")
nomap("n", "gc")
nomap("n", "gbc")
map("n", "<F1>", "<Esc>", { noremap = true, silent = true })
map("i", "<F1>", "<Esc>", { noremap = true, silent = true })
map("v", "<F0>", "<Esc>", { noremap = true, silent = true })
