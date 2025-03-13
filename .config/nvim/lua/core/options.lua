vim.cmd("let g:netrw_liststyle =  3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.swapfile = false

-- Tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.cursorline = false

-- Search settings
opt.ignorecase = true
opt.smartcase = true

-- Termguicolors
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes" -- show sign column so text doesn't shift
opt.cmdheight = 0      -- replace the statusline with the cmdline when entering command mode

-- Backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Colorscheme
-- vim.cmd("colorscheme retrobox")
-- vim.cmd("colorscheme vim")
vim.cmd("colorscheme moonfly")

-- Split windows
opt.splitright = true
opt.splitbelow = true

vim.diagnostic.config({
  signs = false,
  virtual_underline = true,
  underline = true,
})
