local keymap = vim.keymap

keymap.set("n", "<leader>T", "<cmd>Neotree dir=./ toggle left<CR>", {})
keymap.set("n", "<leader>t", "<cmd>Neotree dir=./ toggle float<CR>", {})
