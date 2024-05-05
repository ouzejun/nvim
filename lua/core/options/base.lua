---@diagnostic disable: undefined-global
local opt = vim.opt
vim.opt.termguicolors = true

-- 语法高亮
syntax = "on"

-- 行号
opt.relativenumber = true
opt.number = true

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

-- 设置 signcolumn 始终显示，可以根据需要更改这个设置
vim.opt.signcolumn = "yes:3"
vim.api.nvim_set_hl(0, "SignColumn", {bg = none})


-- 设置 Neovim 窗口分割线的字符
-- `vert` 选项设置垂直分割线的字符
-- `hor` 选项设置水平分割线的字符
-- `eob` 表示余下的没有代码部分的符号
vim.o.fillchars = "vert:│,horiz:─,eob: "

-- 设置默认 tab 为两个空格
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  command = [[setlocal shiftwidth=4 tabstop=4 expandtab]]
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  command = [[setlocal shiftwidth=2 tabstop=2 expandtab]]
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  command = [[setlocal shiftwidth=2 tabstop=2 expandtab]]
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "html",
  command = [[setlocal shiftwidth=2 tabstop=2 expandtab]]
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "javascript",
  command = [[setlocal shiftwidth=2 tabstop=2 expandtab]]
})
