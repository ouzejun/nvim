package.path = package.path .. ";/home/yangtao/.local/share/nvim/lazy/telescope.nvim/lua/telescope/?/init.lua"

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

        layout_config = {
          width = 0.91,  -- 设置宽度为屏幕宽度的75%
          height = 0.99,  -- 设置高度为屏幕高度的50%
        },
      }
    }
  end,
}
