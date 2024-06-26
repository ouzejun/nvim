local keymap = vim.keymap

keymap.set("n", "tn", function()
  require("todo-comments").jump_next({
    keywords = {"TODO", "ERROR", "WARN", "HACK", "OPTM", "NOTE", "TEST", "BUGS",
      "DEAD"},})
end, { desc = "Next error/warning todo comment" })

keymap.set("n", "tm", function()
  require("todo-comments").jump_prev({
    keywords = {"TODO", "ERROR", "WARN", "HACK", "OPTM", "NOTE", "TEST", "BUGS",
      "DEAD"},})
end, { desc = "Previous error/warning todo comment" })

keymap.set("n", "tt", ":TodoTelescope<CR>", { desc = "Toggle todo telescope" })
keymap.set("n", "tq", ":TodoQuickFix<CR>", { desc = "Toggle todo Quickfix" })
keymap.set("n", "tr", ":TodoLoclist<CR>", { desc = "Toggle todo Local list" })
