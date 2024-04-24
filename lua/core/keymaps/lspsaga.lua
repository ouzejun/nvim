local keymap = vim.keymap

keymap.set("n", "ga", "<cmd>Lspsaga code_action<CR>")
keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>")
keymap.set("n", "gD", "<cmd>Lspsaga goto_definition<CR>")
keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>")
keymap.set("n", "gh", "<cmd>Lspsaga hover_doc<CR>")
keymap.set("n", "gH", "<cmd>Lspsaga hover_doc ++keep<CR>")
keymap.set("n", "gn", "<cmd>Lspsaga diagnostic_jump_next<CR>")
keymap.set("n", "go", "<cmd>Lspsaga outline<CR>")
keymap.set("n", "gt", "<cmd>Lspsaga term_toggle<CR>")
keymap.set("t", "<c-d>", "<cmd>Lspsaga term_toggle<CR>")

