local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.swapfile = false

opt.tabstop = 2
opt.shiftwidth = 2
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

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    ---@diagnostic disable-next-line: need-check-nil
    if client:supports_method('textDocument/completion') then
      ---@diagnostic disable-next-line: need-check-nil
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

vim.opt.completeopt = "menuone,noinsert,popup"

vim.diagnostic.config({
  signs = false,
  virtual_underline = true,
  underline = true,
  virtual_lines = true
})
