local map = vim.keymap.set
local nomap = vim.keymap.del

-- Nvim Keybindings
map({ "n", "i", "v" }, "<C-z>", "<cmd>u<CR>", { desc = "Go back in the file" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> wa <cr>", { desc = "Save all files" })
map("n", "Q", "<nop>")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "<leader>x", "<cmd>wq<CR>", { desc = "Close and save the buffer" })

--Normal Keybindings
map("n", "<leader>e", "$a", { desc = "Go to the end of the line" })
map("n", "<leader>j", "_", { desc = "Go to the beginning of the line" })
map("n", "<C-a>", "ggVG")

-- Copy Stuff around
map("n", "<leader>y", "*y", { desc = "Use pc clipboard" })

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

-- Mappings

nomap("n", "gcc")
nomap("n", "gc")
nomap("n", "gbc")
