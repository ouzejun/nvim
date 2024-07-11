vim.g.copilot_no_tab_map = true
require("which-key").register{
  ["<a-w>"] = { mode = "i", "<Plug>(copilot-accept-word)", "接受当前单词"},
  ["<a-k>"] = { mode = "i", "<Plug>(copilot-accept-line)", "接受下一行"},
  ["<a-l>"] = { mode = "i", "<Plug>(copilot-next)", "下一个建议"},
  ["<a-j>"] = { mode = "i", "<Plug>(copilot-prev)", "上一个建议"},
  ["<a-c>"] = { mode = "i", "<Plug>(copilot-cancel)", "取消建议"},
}

vim.keymap.set('i', '<a-m>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
