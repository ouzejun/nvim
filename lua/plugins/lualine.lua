-- +-------------------------------------------------+
-- | A | B | C                             X | Y | Z |
-- +-------------------------------------------------+
function GitRootToParentDirectory()
    local git_cmd = "git -C " .. vim.fn.expand('%:p:h') .. " rev-parse --show-toplevel"
    local git_root = vim.fn.systemlist(git_cmd)[1]
    if vim.v.shell_error ~= 0 then
        return '' -- 不在 Git 仓库中，返回空字符串
    end

    local file_path = vim.fn.expand('%:p')
    local relative_path = vim.fn.fnamemodify(file_path, ':.:h')
   
    return relative_path
end


local colors = {
  black        = '#51576D',
  white        = '#B5BFE2',
  red          = '#E78284',
  green        = '#A9D3AB',
  blue         = '#8CAAEE',
  yellow       = '#E5C890',
  pink         = '#F5BDE6',

  darkgray     = '#626880', 
  gray         = '#A5ADCE',
  lightgray    = '#B5BFE2',
}
local gruvbox = {
  normal = {
    a = {bg = colors.gray,     fg = colors.black, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.pink,  gui = 'bold'},
    c = {bg = colors.darkgray, fg = colors.gray},
    x = {bg = colors.darkgray, fg = colors.gray},
    y = {bg = colors.darkgray, fg = colors.pink},
    z = {bg = colors.gray,     fg = colors.black, gui = 'bold'}
  },
  insert = {
    a = {bg = colors.blue,     fg = colors.black, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.pink,  gui = 'bold'},
    c = {bg = colors.darkgray, fg = colors.gray},
    x = {bg = colors.darkgray, fg = colors.gray},
    y = {bg = colors.darkgray, fg = colors.pink},
    z = {bg = colors.gray,     fg = colors.black, gui = 'bold'}
  },
  visual = {
    a = {bg = colors.yellow,   fg = colors.black, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.pink,  gui = 'bold'},
    c = {bg = colors.darkgray, fg = colors.gray},
    x = {bg = colors.darkgray, fg = colors.gray},
    y = {bg = colors.darkgray, fg = colors.pink},
    z = {bg = colors.gray,     fg = colors.black, gui = 'bold'}
  },
  replace = {
    a = {bg = colors.red,      fg = colors.black, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.pink,  gui = 'bold'},
    c = {bg = colors.darkgray, fg = colors.gray},
    x = {bg = colors.darkgray, fg = colors.gray},
    y = {bg = colors.darkgray, fg = colors.pink},
    z = {bg = colors.gray,     fg = colors.black, gui = 'bold'}
  },
  command = {
    a = {bg = colors.green,    fg = colors.black, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.pink,  gui = 'bold'},
    c = {bg = colors.darkgray, fg = colors.gray},
    x = {bg = colors.darkgray, fg = colors.gray},
    y = {bg = colors.darkgray, fg = colors.pink},
    z = {bg = colors.gray,     fg = colors.black, gui = 'bold'}
  },
  inactive = {
    a = {bg = colors.darkgray, fg = colors.gray, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.gray},
    c = {bg = colors.darkgray, fg = colors.gray}
  },
}


return {
    {
        'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
	    require('lualine').setup({
                options = {
                    icons_enabled = true,
                    theme = gruvbox,
                    component_separators = { left = '', right = ''},
                    section_separators = {},
                    disabled_filetypes = {
                        statusline = {},
                        winbar = {},
	            },
                    ignore_focus = {},
                    always_divide_middle = true,
                    globalstatus = false,
                    refresh = {
                        statusline = 1000,
                        tabline = 1000,
                        winbar = 1000,
                    }
                },
                sections = {
                    lualine_a = {'mode'},
                    lualine_b = {'branch', 'diff', 'diagnostics'},
                    lualine_c = {GitRootToParentDirectory, 'filename'},
                    lualine_x = {'encoding', 'filetype'},
                    lualine_y = {'progress'},
                    lualine_z = {'location'}
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = {'filename'},
                    lualine_x = {'location'},
                    lualine_y = {},
                    lualine_z = {}
                },
                tabline = {},
                winbar = {},
                inactive_winbar = {},
                extensions = {},
	    })
	end
    }
}
