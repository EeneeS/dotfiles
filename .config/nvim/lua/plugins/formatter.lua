return {
  "stevearc/conform.nvim",
  opts = {},
  config = function()
    require("conform").setup({
      format_on_save = {
        timeout_ms = 10000,
        lsp_format = "fallback",
      },
      formatters_by_ft = {
        php = { "pint" },
      },
    })
  end,
}
