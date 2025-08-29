-- return {
--   "bluz71/vim-moonfly-colors",
--   lazy = false,
--   config = function()
--     vim.cmd("colorscheme moonfly")
--   end,
--   priority = 1000
-- }
--

return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function ()
    require("gruvbox").setup({
      transparent_mode = true
    })
    vim.cmd("colorscheme gruvbox")
  end,
}

-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd("colorscheme tokyonight")
--     -- vim.cmd("colorscheme zaibatsu")
--   end,
--   opts = {},
-- }
