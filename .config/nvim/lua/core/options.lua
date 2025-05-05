local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.swapfile = false

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.cursorline = false

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.cmdheight = 0

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
vim.opt.clipboard = "unnamedplus"

opt.splitright = true
opt.splitbelow = true

vim.diagnostic.config({
  signs = true,
  virtual_underline = true,
  underline = true,
  virtual_text = { spacing = 4 }, -- Adjust spacing if needed
  virtual_lines = false,
})
