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
            require('lspconfig').angularls.setup {
                cmd = {"ngserver", "--stdio"},
                init_options = {
                    -- Any initialization options needed
                },
                root_dir = require('lspconfig').util.root_pattern('angular.json', 'project.json'),
                on_new_config = function(new_config, new_root_dir)
                    new_config.cmd_env = {
                        NODE_PATH = "/home/niels/.nvm/versions/node/v23.7.0/lib/node_modules"
                    }
                end,
            }
    end,
  }
}
