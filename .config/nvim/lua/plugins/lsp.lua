return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
    "saghen/blink.cmp",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()

    local capabilities = require("blink.cmp").get_lsp_capabilities()
    local lspconfig = require("lspconfig")

    require("mason-lspconfig").setup_handlers {
      function(server_name)
        local opts = {
          capabilities = capabilities,
        }

        -- add intelephense to blade files
        if server_name == "intelephense" then
          opts.filetypes = { "php", "blade" }
        end

        lspconfig[server_name].setup(opts)
      end,
    }

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
  end,
}
