require("options")
require("keymaps")


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
vim.lsp.enable("ts_ls")

vim.cmd.colorscheme("kanagawa")
