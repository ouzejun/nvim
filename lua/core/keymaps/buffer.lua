local keymap = vim.keymap
require("which-key").register{
  t = {
    name = "Buffer",
    l = { "<cmd>BufferLineCycleNext<CR>", "下一个缓冲区" },
    h = { "<cmd>BufferLineCyclePrev<CR>", "上一个缓冲区" },
    p = { "<cmd>BufferLinePick<CR>", "选择缓冲区" },
    x = { "<cmd>BufferLinePickClose<CR>", "关闭缓冲区" },
    ["<s-h>"] = { "<cmd>BufferLineMoveNext<CR>", "移动缓冲区" },
    ["<s-j>"] = { "<cmd>BufferLineMovePrev<CR>", "移动缓冲区" },
  }
}
