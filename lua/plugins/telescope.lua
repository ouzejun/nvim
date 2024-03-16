package.path = package.path .. ";/home/yangtao/.local/share/nvim/lazy/telescope.nvim/lua/telescope/?/init.lua"
local builtin = require('builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').setup {
      defaults = {
        mappings = {
          i = {
            ['<C-k>'] = require('telescope.actions').move_selection_next,
            ['<C-i>'] = require('telescope.actions').move_selection_previous,
            ['<C-q>'] = require('telescope.actions').close,
          },
          n = {
            ['k'] = require('telescope.actions').move_selection_next,
            ['i'] = require('telescope.actions').move_selection_previous,
            ['q'] = require('telescope.actions').close,
          }
        },
      }
    }
  end,
}
