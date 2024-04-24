vim.cmd [[
  highlight BufferLineFill guifg=#A6D189 guibg=none
  highlight BufferLineBackground guifg=#5B6078 guibg=none gui=bold
  highlight BufferLineWarningSelected gui=bold guifg=#E5C890 guibg=none
  highlight BufferLineErrorSelected gui=bold guifg=#E78284 guibg=none
  highlight BufferLineHintSelected gui=bold guifg=#A5ADCE guibg=none
  highlight BufferLineErrorDiagnosticSelected gui=bold guifg=#E78284 guibg=none
  highlight BufferLineNumbersSelected gui=bold guifg=#A5ADCE guibg=none
  highlight BufferLineBufferSelected gui=bold guifg=#A5ADCE guibg=none
  highlight BufferLineBufferVisible gui=bold guifg=#A5ADCE guibg=none
  highlight BufferLinePickSelected guifg=#E78284 guibg=none gui=bold
  highlight BufferLinePick guibg=none guifg=#A5ADCE gui=bold
  highlight BufferLinePickVisible guifg=#E78284 guibg=none gui=bold
  highlight BufferLineHintDiagnosticSelected guifg=#E78284 guibg=none gui=bold
  highlight BufferLineWarningDiagnosticSelected guifg=#9e753a guibg=none gui=bold
  highlight BufferLineInfoSelected guifg=#add8e6 guibg=none gui=bold
  highlight BufferLineInfoDiagnosticSelected guifg=#81a2ac guibg=none gui=bold
]]


return {
  'akinsho/bufferline.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      highlights = {
        tab_separator_selected = {
          underline = true,
        },
      },

      options = {
        icons = 'both',
        icon_separator_active = '▎',
        icon_separator_inactive = '▎',
        icon_close_tab_modified = '●',

        indicator = {
          icon = '▎', -- this should be omitted if indicator style is not 'icon'
        },

        offsets = {
          {
            filetype = "NvimTree",
            text = "Nvim Tree",
            text_align = "center",
            separator = " ",
          },
          {
            filetype = "Neotree",
            text = "files",
            text_align = "center",
            separator = " ",
          }
        },

        numbers = 'ordinal',
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local s = " "
          for e, n in pairs(diagnostics_dict) do
            local sym = e == "error" and " "
            or (e == "warning" and " " or " " )
            s = s .. n .. sym
          end
          return s
        end,
      },
    }
  end,
}
