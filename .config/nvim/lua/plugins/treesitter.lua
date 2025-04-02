return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require 'nvim-treesitter.configs'.setup {
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
    }
  end,
}
