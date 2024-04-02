vim.cmd [[
  highlight DiagnosticWarn guifg=#E5C890
  highlight DiagnosticError guifg=#db5a5c
  highlight SagaWinBarSep guifg=#B5BFE2
  highlight CodeActionNumber guibg=none guifg=#B5BFE2
  highlight SagaCount guifg=#626880 guibg=none
]]

return {
  "nvimdev/lspsaga.nvim",
  config = function()
    require("lspsaga").setup({
      use_saga_diagnostic_sign = true,
      ui = {
        code_action = '󰽭',
      },
      symbol_in_winbar = {
        enable = false,
      },
      signature = {
        enable = true,
      },
    })
  end,
}

