vim.api.nvim_set_keymap("n", "<leader>t", ":NvimTreeToggle<CR>",
  { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>n", ":NvimTreeFindFile<CR>",
  { noremap = true, silent = true })

local function my_on_attach(bufnr)
  local api = require("nvim-tree.api")
  local function opts(desc)
    return { desc = "nvim-tree: " .. desc,
      buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  vim.keymap.set('n', 'w',
    api.tree.change_root_to_node, opts('CD'))
  vim.keymap.set('n', 'a',
    api.fs.rename , opts('Rename'))
  vim.keymap.set('n', 'c',
    api.fs.create, opts('Create File Or Directory'))
  vim.keymap.set('n', 'dd',
    api.fs.cut, opts('Cut'))
  vim.keymap.set('n', 'dD',
    api.fs.remove, opts('Delete'))
  vim.keymap.set('n', 'yy',
    api.fs.copy.filename, opts('Copy Name'))
  vim.keymap.set('n', 'yp',
    api.fs.copy.relative_path, opts('Copy Relative Path'))

end

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      on_attach = my_on_attach,
    }
  end,
}
