vim.keymap.set("n", "tn", function()
  require("todo-comments").jump_next({
    keywords = {"TODO", "ERROR", "WARN", "HACK", "OPTM", "NOTE", "TEST", "BUGS",
      "DEAD"},})
end, { desc = "Next error/warning todo comment" })

return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    keywords = {
      TODO = { icon = " ", color = "info" },
      HACK = { icon = "󰈸 ", color = "warning" },
      WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
      OPTM = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
      NOTE = { icon = "󰎞 ", color = "hint", alt = { "INFO" } },
      DEAD = { icon = "󱑀 ", color = "hint", alt = { "INFO" } },
      TEST = { icon = "󰙨 ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      BUGS = { icon = " ", color = "error", alt = { "BUG", "FIXED" } },
      INFO = { icon = " ", color = "info" },
    },
    colors = {
      error = { "LspDiagnosticsDefaultError", "ErrorMsg", "#DC2626" },
      warning = { "LspDiagnosticsDefaultWarning", "WarningMsg", "#FBBF24" },
      info = { bg = '#E78284' },
      hint = { "LspDiagnosticsDefaultHint", "#10B981" },
      test = { "LspDiagnosticsDefaultHint", "#10B981" },
    },
  }
}
