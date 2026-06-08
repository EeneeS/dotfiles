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
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move down in buffer with cursor centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move up in buffer with cursor centered" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result with cursor centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result with cursor centered" })

-- mini.pick
vim.keymap.set("n", "<leader>ff", ":Pick files<CR>", { desc = "Minipick files" })
vim.keymap.set("n", "<leader>fg", ":Pick grep_live<CR>", { desc = "Minipick grep_live" })

-- explore
vim.keymap.set("n", "-", ":Explore<CR>", { desc = "Open explorer" })

-- lsp
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })

-- clear highlight
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search highlighting", silent = true })

-- indentation
vim.keymap.set("v", "<", "<gv", { desc = "Unindent and keep selection" });
vim.keymap.set("v", ">", ">gv", { desc = "Indent and keep selection " });

vim.keymap.set("n", "<leader>re", "<cmd>restart<CR>", { desc = "Restart Neovim" })

vim.keymap.set("n", "<leader>u", function()
    vim.cmd.packadd("nvim.undotree")
    require("undotree").open()
end, { desc = "Toggle Builtin Undotree" })
