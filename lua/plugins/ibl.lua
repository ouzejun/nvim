vim.cmd [[
  highlight IndentBlanklineIndent1 ctermfg=1 gui=nocombine
  highlight IndentBlanklineIndent2 ctermfg=7 gui=nocombine
  highlight IndentBlanklineIndent3 ctermfg=3 gui=nocombine
  highlight IndentBlanklineIndent4 ctermfg=2 gui=nocombine
  highlight IndentBlanklineIndent5 ctermfg=6 gui=nocombine
  highlight IndentBlanklineIndent6 ctermfg=4 gui=nocombine
  highlight IndentBlanklineIndent7 ctermfg=5 gui=nocombine
]]

return {
    {
        'lukas-reineke/indent-blankline.nvim',
        config = function()
	    require("ibl").setup({
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
