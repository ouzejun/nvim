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

-- ----------插件----------
-- lsp
keymap.set("n", "ga", "<cmd>Lspsaga code_action<CR>")
keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>")
keymap.set("n", "gD", "<cmd>Lspsaga goto_definition<CR>")
keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>")
keymap.set("n", "gh", "<cmd>Lspsaga hover_doc<CR>")
keymap.set("n", "gH", "<cmd>Lspsaga hover_doc ++keep<CR>")
keymap.set("n", "gn", "<cmd>Lspsaga diagnostic_jump_next<CR>")
keymap.set("n", "go", "<cmd>Lspsaga outline<CR>")
keymap.set("n", "gf", "<cmd>Lspsaga finder<CR>")
keymap.set("n", "gt", "<cmd>Lspsaga term_toggle<CR>")
keymap.set("t", "<c-d>", "<cmd>Lspsaga term_toggle<CR>")

-- copilot chat
-- normal
keymap.set("n", "<leader>hc", "<cmd>CopilotChatToggle<CR>")
keymap.set("n", "<leader>hd", "<cmd>CopilotChatDocs<CR>")
keymap.set("n", "<leader>ho", "<cmd>CopilotChatOptimize<CR>")
keymap.set("n", "<leader>hf", "<cmd>CopilotChatFix<CR>")
keymap.set("n", "<leader>hq",
  function()
    local input = vim.fn.input("Quick Chat: ")
    if input ~= "" then
      require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
    end
  end
)
-- visual
keymap.set("v", "<leader>hd", "<cmd>CopilotChatDocs<CR>")
keymap.set("v", "<leader>hf", "<cmd>CopilotChatFix<CR>")
keymap.set("v", "<leader>ho", "<cmd>CopilotChatOptimize<CR>")
keymap.set("v", "<leader>hq",
  function()
    local input = vim.fn.input("Quick Chat: ")
    if input ~= "" then
      require("CopilotChat").ask(input, { selection = require("CopilotChat.select").visual })
    end
  end
)

-- yankband
keymap.set("n", "<leader>y", "<cmd>YankBank<CR>", { noremap = true })

-- neo tree
keymap.set("n", "<leader>T", "<cmd>Neotree dir=./ toggle left<CR>", {})
keymap.set("n", "<leader>t", "<cmd>Neotree dir=./ toggle float<CR>", {})
