local keymap = vim.keymap

keymap.set("n", "<leader>fe", "<cmd>Telescope emoji<CR>",
  { noremap = true, silent = true })
