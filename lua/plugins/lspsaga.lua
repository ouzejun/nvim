return {
  "nvimdev/lspsaga.nvim",
  config = function()
    require("lspsaga").setup({
      use_saga_diagnostic_sign = true,
      ui = {
        code_action = '',
        lines = { '└', '├', '│', '─', '┌' }
      },
      symbol_in_winbar = {
        enable = true,
        hide_keyword = true,
      },
      signature = {
        enable = true,
      },
      outline = {
        win_width = 50,
      },
      implement = {
        enable = true,
        sign = true,
        virtual_text = true,
      },
      finder = {
        keys = {
          split = '-',
          vsplit = '|',
          tabnew = 'o',
          tab = '<nop>',
        }
      },
      float_terminal = {
        win_width = 50,
      },
    })
  end,
}

