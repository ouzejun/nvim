vim.keymap.set("n", "tn", function()
  require("todo-comments").jump_next({
    keywords = {"TODO", "ERROR", "WARN", "HACK", "OPTM", "NOTE", "TEST", "BUGS",
      "DEAD"},})
end, { desc = "Next error/warning todo comment" })
vim.keymap.set("n", "tp", function()
  require("todo-comments").jump_prev({
    keywords = {"TODO", "ERROR", "WARN", "HACK", "OPTM", "NOTE", "TEST", "BUGS",
      "DEAD"},})
end, { desc = "Previous error/warning todo comment" })
vim.keymap.set("n", "tt", ":TodoTelescope<CR>", { desc = "Toggle todo telescope" })
vim.keymap.set("n", "tq", ":TodoQuickFix<CR>", { desc = "Toggle todo Quickfix" })
vim.keymap.set("n", "tr", ":TodoLoclist<CR>", { desc = "Toggle todo Local list" })

return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    keywords = {
      TODO = { icon = " ", color = "todo" },
      HACK = { icon = "󰈸 ", color = "hack" },
      WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
      OPTM = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
      NOTE = { icon = "󰎞 ", color = "hint", alt = { "INFO" } },
      DEAD = { icon = "󱑀 ", color = "dead", },
      TEST = { icon = "󰙨 ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      BUGS = { icon = " ", color = "bugs", alt = { "BUG", "FIXED" } },
      INFO = { icon = " ", color = "info" },
      MARK = { icon = "󱎥 ", color = "mark" },
    },
    colors = {
      hack = { bg = "#FBBF24"},
      error = { "LspDiagnosticsDefaultError", "ErrorMsg", "#DC2626" },
      warning = { "LspDiagnosticsDefaultWarning", "WarningMsg", "#FBBF24" },
      todo = { bg = '#E78284' },
      hint = { "LspDiagnosticsDefaultHint", "#10B981" },
      test = { "LspDiagnosticsDefaultHint", "#92b2f7" },
      dead = { bg = "#0799fa" },
      info = { bg = "#cb99f7" },
      mark = { bg = "#ffd700" },
      bugs = { bg = "#9eacb5" },
    },
  }
}
-- TODO: example
-- HACK: example
-- WARN: example
-- OPTM: example
-- NOTE: example
-- DEAD: example
-- TEST: example
-- BUGS: example
-- INFO: example
-- MARK: example
