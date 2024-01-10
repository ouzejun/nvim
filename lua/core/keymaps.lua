vim.g.mapleader = " "

local keymap = vim.keymap

-- ----------插入模式----------
-- 删除
keymap.set("i", "<c-d>", "<Left><Del>")
-- 上下左右移动
keymap.set("i", "<c-j>", "<Left>")
keymap.set("i", "<c-l>", "<Right>")
keymap.set("i", "<c-i>", "<Up>")
keymap.set("i", "<c-k>", "<Down>")
-- 单词移动
keymap.set("i", "<c-n>", "<Esc>bi")
keymap.set("i", "<a-n>", "<Esc>ea")
-- Tab
keymap.set("i", "<Tab>", "    ")

-- ----------视觉模式----------
-- 上下左右移动
keymap.set("v", "i", "<Up>")
keymap.set("v", "k", "<Down>")
keymap.set("v", "j", "<Left>")
keymap.set("v", "l", "<Right>")
-- 批量移动
keymap.set("v", "K", ":m '>+1<CR>gv=gv")
keymap.set("v", "I", ":m '<-2<CR>gv=gv")
-- 单词移动
keymap.set("v", "<c-n>", "b")
keymap.set("v", "<a-n>", "e")

-- ----------普通模式----------
-- 上下左右移动
keymap.set("n", "i", "<Up>")
keymap.set("n", "k", "<Down>")
keymap.set("n", "j", "<Left>")
keymap.set("n", "l", "<Right>")
keymap.set("n", "<s-i>", "5<Up>")
keymap.set("n", "<s-k>", "5<Down>")
keymap.set("n", "<s-j>", "5<Left>")
keymap.set("n", "<s-l>", "5<Right>")
-- 单词移动
keymap.set("n", "<c-n>", "b")
keymap.set("n", "<a-n>", "e")
-- 文首和文尾
keymap.set("n", "h", "gg")
keymap.set("n", "<s-h>", "G")
-- 视觉框移动
keymap.set("n", "<s-m>", "zt5<Up>5<Down>")
keymap.set("n", "m", "zz")
keymap.set("n", "<c-m>", "zb5<Down>5<Up>")

-- 进入插入模式
keymap.set("n", "a", "i")
keymap.set("n", "<s-a>", "a")

-- 往下创建一行空行
keymap.set("n", "<s-n>", "i<CR>")

-- u键管理
keymap.set("n", "<c-u>", "<c-r>")
keymap.set("n", "<s-u>", "<c-r>")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")


