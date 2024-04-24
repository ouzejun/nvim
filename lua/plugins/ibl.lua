vim.cmd [[
  highlight IndentBlanklineIndent1 guifg=#E78284
  highlight IndentBlanklineIndent2 guifg=#dbb75a
  highlight IndentBlanklineIndent3 guifg=#E5C890
  highlight IndentBlanklineIndent4 guifg=#A6D189
  highlight IndentBlanklineIndent5 guifg=#81C8BE
  highlight IndentBlanklineIndent6 guifg=#8CAAEE
  highlight IndentBlanklineIndent7 guifg=#764cd9
]]

return {
  {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require("ibl").setup({
        exclude = {
          filetypes = {
            "lspinfo",
            'lazy',
            "dashboard",
            "checkhealth",
            "startify",
            "help",
            "",
          },
        },
        indent = {
          smart_indent_cap = true,
          highlight = {
            "IndentBlanklineIndent1",
            "IndentBlanklineIndent2",
            "IndentBlanklineIndent3",
            "IndentBlanklineIndent4",
            "IndentBlanklineIndent5",
            "IndentBlanklineIndent6",
            "IndentBlanklineIndent7",
          },
        },
        scope  = {
          show_start = false,
          show_end = false,
          highlight = {
            "IndentBlanklineIndent1",
            "IndentBlanklineIndent2",
            "IndentBlanklineIndent3",
            "IndentBlanklineIndent4",
            "IndentBlanklineIndent5",
            "IndentBlanklineIndent6",
            "IndentBlanklineIndent7",
          },
        },
      })
    end
  }
}
