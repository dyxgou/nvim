vim.g.mapleader = " "
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.smartindent = true
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.readonly = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"


vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.wrap = true

-- Search
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

-- Colors
vim.opt.termguicolors = true
vim.opt.colorcolumn = "100"
vim.opt.signcolumn = "yes"
vim.opt.cmdheight = 1
vim.opt.scrolloff = 10

-- Behaviour
vim.opt.hidden = true
vim.opt.errorbells = false
vim.backspace = "indent,eol,start"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.autochdir = false
vim.opt.mouse = ""
vim.opt.maxmapdepth = 10
