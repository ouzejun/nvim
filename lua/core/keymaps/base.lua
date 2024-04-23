vim.g.mapleader = " "

local keymap = vim.keymap

-- ----------插入模式----------
-- 删除
keymap.set("i", "<c-d>", "<Left><Del>")
-- 上下左右移动
keymap.set("i", "<c-j>", "<Left>")
keymap.set("i", "<c-l>", "<Right>")
keymap.set("i", "<c-u>", "<Up>")
keymap.set("i", "<c-k>", "<Down>")

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
-- 顶部底部
keymap.set("v", "hh", "gg")
keymap.set("v", "<s-h>", "G")

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
keymap.set("n", "hh", "gg")
keymap.set("n", "<s-h>", "G")

-- 视觉框移动
keymap.set("n", "mi", "zt5<Up>5<Down>")
keymap.set("n", "mm", "zz")
keymap.set("n", "mk", "zb5<Down>5<Up>", { noremap = true })

-- 窗口制作
keymap.set("n", "|", ":vsplit<CR>")
keymap.set("n", "-", "<cmd>split<CR>")

-- 窗口移动
keymap.set("n", "<leader>l", "<c-w>l")
keymap.set("n", "<leader>i", "<c-w>k")
keymap.set("n", "<leader>j", "<c-w>h")
keymap.set("n", "<leader>k", "<c-w>j")

-- 窗口大小
keymap.set("n", ">", "<c-w>+")  -- 增加窗口高度
keymap.set("n", "<", "<c-w>-")  -- 减少窗口高度
keymap.set("n", ",", "<c-w><")  -- 减少窗口宽度
keymap.set("n", ".", "<c-w>>")  -- 增加窗口宽度

-- 进入插入模式
keymap.set("n", "a", "i")
keymap.set("n", "<s-a>", "a")

-- u键管理
keymap.set("n", "<c-u>", "<c-r>")
keymap.set("n", "<s-u>", "<c-r>")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 删除一些不必要容易引起麻烦的键
keymap.set("n", "s", "<Nop>")
keymap.set("n", "S", "<Nop>")
keymap.set("n", "r", "<Nop>")
keymap.set("n", "q", "<Nop>")

