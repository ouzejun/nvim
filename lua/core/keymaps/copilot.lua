vim.g.copilot_no_tab_map = true
require("which-key").register{
  ["<a-m>"] = { mode = "i", "<Plug>(copilot-accept)", expr = true, replace_keycodes = false, name = "接受所有提示"},
  ["<a-w>"] = { mode = "i", "<Plug>(copilot-accept-word)", name = "接受当前单词"},
  ["<a-k>"] = { mode = "i", "<Plug>(copilot-accept-line)", name = "接受下一行"},
  ["<a-l>"] = { mode = "i", "<Plug>(copilot-next)", name = "下一个建议"},
  ["<a-j>"] = { mode = "i", "<Plug>(copilot-prev)", name = "上一个建议"},
  ["<a-c>"] = { mode = "i", "<Plug>(copilot-cancel)", name = "取消建议"},
}
