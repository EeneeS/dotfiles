vim.g.mapleader = " "

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"
vim.opt.cmdheight = 1
vim.opt.backspace = "indent,eol,start"
vim.opt.clipboard = "unnamedplus"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.hlsearch = false
vim.opt.winborder = "rounded"
vim.opt.completeopt = {"menu", "noselect", "popup", "menuone"}

-- Window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Tab management
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to prev tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Scroll improvement
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- mini.pick
vim.keymap.set("n", "<leader>ff", "<cmd>Pick files<CR>")
vim.keymap.set("n", "<leader>fg", "<cmd>Pick grep_live<CR>")

-- explore
vim.keymap.set("n", "-", "<cmd>Explore<CR>")

-- lsp
vim.keymap.set("n", "gd", vim.lsp.buf.definition)

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('my.lsp', {}),
    callback = function(ev)
        local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
        if client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, ev.buf, {autotrigger = true})
        end
    end,
})

vim.pack.add({
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = "https://github.com/rebelot/kanagawa.nvim" },
    { src = "https://github.com/nvim-mini/mini.pick" },
})

require("mini.pick").setup()

require('kanagawa').setup({
    commentStyle = { italic = false },
    functionStyle = {},
    keywordStyle = { italic = false},
    statementStyle = { bold = false },
})

vim.lsp.enable("lua_ls")

vim.cmd.colorscheme("kanagawa")
