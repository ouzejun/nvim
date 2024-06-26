local keymap = vim.keymap
local builtin = require('telescope.builtin')

require("which-key").register({
  ["<leader>f"] = "telescope",
  ["<leader>ff"] = "find files",
  ["<leader>fg"] = "live grep",
  ["<leader>fb"] = "buffers",
  ["<leader>fh"] = "help tags",
})

keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})
keymap.set('n', '<leader>?',  '<cmd>Telescope keymaps<CR>')
