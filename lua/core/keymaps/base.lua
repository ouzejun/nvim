vim.g.mapleader = " "

local keymap = vim.keymap

-- ----------which key --------
require("which-key").register({
  ["<leader>l"]  = "right pane",
  ["<leader>h"]  = "left pane",
  ["<leader>j"]  = "down pane",
  ["<leader>k"]  = "up pane",
})

-- ----------插入模式----------
-- 上下左右移动
keymap.set("i", "<c-h>", "<Left>")
keymap.set("i", "<c-l>", "<Right>")
keymap.set("i", "<c-k>", "<Up>")
keymap.set("i", "<c-j>", "<Down>")

-- ----------视觉模式----------
-- 批量移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "w", "")
keymap.set("v", "e", "")

-- ----------普通模式----------
-- 上下左右移动
keymap.set("n", "k", "<Up>")
keymap.set("n", "j", "<Down>")
keymap.set("n", "h", "<Left>")
keymap.set("n", "l", "<Right>")
keymap.set("n", "<s-k>", "5<Up>")
keymap.set("n", "<s-j>", "5<Down>")
keymap.set("n", "<s-h>", "5<Left>")
keymap.set("n", "<s-l>", "5<Right>")

-- 单词移动
keymap.set("n", "w", "b")
keymap.set("n", "W", "e")
keymap.set("n", "E", "ge")

-- 视觉框移动
keymap.set("n", "mk", "zt5<Up>5<Down>")
keymap.set("n", "mm", "zz")
keymap.set("n", "mj", "zb5<Down>5<Up>", { noremap = true })

-- 窗口制作
keymap.set("n", "|", ":vsplit<CR>")
keymap.set("n", "-", "<cmd>split<CR>")

-- 窗口移动
keymap.set("n", "<leader>l", "<c-w>l")
keymap.set("n", "<leader>k", "<c-w>k")
keymap.set("n", "<leader>h", "<c-w>h")
keymap.set("n", "<leader>j", "<c-w>j")

-- 窗口大小
keymap.set("n", "<c-j>", "<c-w>+")  -- 增加窗口高度
keymap.set("n", "<c-k>", "<c-w>-")  -- 减少窗口高度
keymap.set("n", "<c-h>", "<c-w><")  -- 减少窗口宽度
keymap.set("n", "<c-l>", "<c-w>>")  -- 增加窗口宽度

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
keymap.set("n", "i", "<Nop>")
keymap.set("n", "I", "<Nop>")

