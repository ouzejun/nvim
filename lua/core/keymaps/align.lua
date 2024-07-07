local keymap = vim.keymap
require("which-key").register{
  ["<leader>a"] = {
    name = "对齐",
    mode = "n",
    ["<leader>a"] = { "<cmd>EasyAlign<CR>", "对齐" },
  },
}
require("which-key").register{
  ["<leader>a"] = {
    name = "对齐",
    mode = "v",
    ["<leader>a"] = { "<cmd>EasyAlign<CR>", "对齐" },
  },
}
