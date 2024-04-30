local keymap = vim.keymap

vim.keymap.set("n", "tl", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "th", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "tp", ":BufferLinePick<CR>")
vim.keymap.set("n", "tx", ":BufferLinePickClose<CR>")
vim.keymap.set("n", "t<s-h>", ":BufferLineMoveNext<CR>")
vim.keymap.set("n", "t<s-j>", ":BufferLineMovePrev<CR>")
