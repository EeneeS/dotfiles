return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } }
          }
        },
      }
    },
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup{}
      lspconfig.ts_ls.setup{}
      lspconfig.gopls.setup{}
      lspconfig.pyright.setup{}
      lspconfig.tailwindcss.setup{}
      lspconfig.cssls.setup{}
    end,
  }
}
