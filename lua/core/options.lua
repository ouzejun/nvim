local opt = vim.opt

syntax = "on"

-- 行号
opt.relativenumber = true
opt.number = true

-- 括号高亮
vim.cmd [[highlight MatchParen ctermbg=None ctermfg=1]]

-- 上限80字符
opt.colorcolumn = "81"
vim.cmd [[highlight ColorColumn ctermbg=8]]

-- 防止包裹
opt.wrap = true

-- 光标行
opt.cursorline = false

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪切板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true


