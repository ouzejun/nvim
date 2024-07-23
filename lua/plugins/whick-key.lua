return {
  "folke/which-key.nvim",
  dependencies = { "echasnovski/mini.icons" },
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    win = {
      border = "single",
    },
    triggers = {
      { "<auto>", mode = "nixsotc" },
      { "b", mode = { "n" } },
      { "t", mode = "n" },
    }
  }
}
