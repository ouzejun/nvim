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
