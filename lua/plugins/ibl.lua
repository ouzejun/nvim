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
