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

            -- Set up the other LSPs you need
            lspconfig.lua_ls.setup{}
            lspconfig.tsserver.setup{}
            lspconfig.pyright.setup{}

            require('lspconfig').angularls.setup {
                cmd = {"ngserver", "--stdio"},
                init_options = {
                    -- Any initialization options needed
                },
                root_dir = require('lspconfig').util.root_pattern('angular.json', 'project.json'),
                on_new_config = function(new_config, new_root_dir)
                    new_config.cmd_env = {
                        NODE_PATH = "/home/niels/.nvm/versions/node/v22.15.0/lib/node_modules"
                    }
                end,
            }

        end,
    }
}

