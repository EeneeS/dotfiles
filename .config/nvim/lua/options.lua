vim.g.mapleader = " "

vim.g.netrw_banner = 0

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false
vim.opt.smartindent = true
vim.opt.inccommand = "split"

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.backspace = "indent,eol,start"
vim.opt.clipboard:append("unnamedplus")

vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winborder = "rounded"

vim.opt.scrolloff = 8

vim.opt.colorcolumn = "0"
vim.opt.signcolumn = "yes"

vim.opt.cmdheight = 1

vim.opt.completeopt = {"menu", "noselect", "popup", "menuone"}

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    callback = function()
        vim.hl.on_yank()
    end,
})
