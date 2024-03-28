local opt = vim.opt
vim.opt.termguicolors = true

syntax = "on"

-- 行号
opt.relativenumber = true
opt.number = true

-- 括号高亮

-- 上限80字符

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
vim.opt.signcolumn = "yes"
-- 定义一个函数来设置 SignColumn 的背景颜色
local function set_signcolumn_bg_color()
  -- 使用 nvim_set_hl API 函数设置 SignColumn 的背景颜色
  -- 这里以深蓝色为例，你可以根据需要更改颜色代码
  vim.api.nvim_set_hl(0, "SignColumn", {bg = NONE})
end
-- 调用函数设置背景颜色
set_signcolumn_bg_color()

-- 设置 tab 为两个空格
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    command = [[setlocal shiftwidth=4 tabstop=4 expandtab]]
})
vim.api.nvim_create_autocmd("FileType", {
    pattern = "java",
    command = [[setlocal shiftwidth=4 tabstop=4 expandtab]]
})
vim.api.nvim_create_autocmd("FileType", {
    pattern = "lua",
    command = [[setlocal shiftwidth=2 tabstop=2 expandtab]]
})

