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
      WARN = { icon = " ", color = "warning" },
      OPTM = { icon = " ", color = "optm" },
      NOTE = { icon = "󰎞 ", color = "hint" },
      DEAD = { icon = "󱑀 ", color = "dead" },
      TEST = { icon = "󰙨 ", color = "test" },
      BUGS = { icon = " ", color = "bugs" },
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
      info = { bg = "#CB99F7" },
      mark = { bg = "#ffd700" },
      bugs = { bg = "#9eacb5" },
      optm = { bg = "#10B981" },
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
