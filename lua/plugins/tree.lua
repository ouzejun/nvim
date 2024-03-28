vim.api.nvim_set_keymap("n", "<leader>t", ":NvimTreeToggle<CR>",
  { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>r", ":NvimTreeRefresh<CR>",
  { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>n", ":NvimTreeFindFile<CR>",
  { noremap = true, silent = true })

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}
