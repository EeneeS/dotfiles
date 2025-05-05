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
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme tokyonight")
    -- vim.cmd("colorscheme zaibatsu")
  end,
  opts = {},
}
