vim.cmd [[
  highlight DiagnosticWarn guifg=#E5C890
  highlight DiagnosticError guifg=#db5a5c
  highlight SagaWinBarSep guifg=#B5BFE2
  highlight CodeActionNumber guibg=none guifg=#B5BFE2
  highlight SagaCount guifg=#626880 guibg=none
  highlight SagaVirtLine guibg=none guifg=#B5BFE2
]]

return {
  "nvimdev/lspsaga.nvim",
  config = function()
    require("lspsaga").setup({
      use_saga_diagnostic_sign = true,
      ui = {
        code_action = '󰽭',
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
    })
  end,
}

