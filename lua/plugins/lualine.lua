-- +-------------------------------------------------+
-- | A | B | C                             X | Y | Z |
-- +-------------------------------------------------+
local colors = {
  white     = '#B5BFE2',

  light_red = '#f38ba8',
  red       = '#E78284',

  orange    = '#fc9003',

  yellow    = '#E5C890',

  green     = '#A9D3AB',

  blue      = '#8CAAEE',

  pink      = '#F5BDE6',

  darkgray  = '#626880',
  gray      = '#A5ADCE',
  lightgray = '#b4befe',

  black     = '#51576D',
  black_bg  = '#212430'
}


local mode = {
  function()
    return ' '
  end,
  separator = {
    left = '',
    right = ''
  },
}
local filename = {
  'filename',
  icon = ' ',
  color = {
    bg = colors.black_bg,
    fg = colors.grey_fg,
    gui = 'bold'
  },
  separator = {
    left = '',
    right = ''
  },
}
local branch = {
  'branch',
  icon = ' ',
  color = {
    bg = colors.red,
    fg = colors.black,
  },
  separator = {
    left = '',
    right = ''
  },
}
local GitRootToParentDirectory = {
  function()
    local git_cmd = "git -C " .. vim.fn.expand('%:p:h') .. " rev-parse --show-toplevel"
    local git_root = vim.fn.systemlist(git_cmd)[1]
    if vim.v.shell_error ~= 0 then
      return '' -- 不在 Git 仓库中，返回空字符串
    end

    local file_path = vim.fn.expand('%:p')
    local relative_path = vim.fn.fnamemodify(file_path, ':.:h')

    return relative_path
  end,
  color = {
    bg = colors.black_bg,
    fg = colors.grey_fg,
    gui = 'bold'
  },
  separator = '',
}
local diff = {
  'diff',
  source = function()
    ---@diagnostic disable-next-line: undefined-field
    local gitstats = vim.b.gitsigns_status_dict
    if gitstats then
      return {
        added = gitstats.added,
        modified = gitstats.changed,
        removed = gitstats.removed,
      }
    end
  end,
  colored = true,
  padding = { left = 0, right = 1 },
  symbols = {
    added = ' ',
    modified = ' ',
    removed = ' ',
  },
  color = { bg = colors.grey_bg },
  separator = '',
}
local info = {
  function()
    return ' '
  end,
  color = {
    bg = colors.green,
    fg = colors.black,
    gui = 'bold'
  },
  separator = {
    left  = '',
    right = '',
  },
  padding = { left = 1, right = 1 },
}
local diagnostics = {
  'diagnostics',
  sources = { 'nvim_lsp' },
  sections = { 'error', 'warn', 'info', 'hint' },
  symbols = { error = ' ', warn = ' ', info = ' ', hint = ' '},
  diagnostic_color = {
    error = { fg = 'DiaganosticError', bg = none },
    warn  = { fg = 'DiagnosticWarn',   bg = none },
    info  = { fg = 'DiaganosticInfo',  bg = none },
    hint  = { fg = 'DiaganosticHint',  bg = none },
  },
  update_in_insert = true,
  colored = true,
  always_visible = true,
}

local copilot = {
  function()
    return ' '
  end,
  separator = '',
  padding = { right = 1 },
  color = function()
    return {
      fg = colors.blue or colors.red,
      bg = none,
    }
  end,
}
local fileformat = {
  'fileformat',
  symbols = {
    unix = ' ',
    dos = ' ',
    mac = ' ',
  },
  color = { bg = colors.green, fg = colors.black },
  separator = {
    left = '',
    right = ''
  },
}
local filesize = {
  'filesize',
  icon = ' ' .. ' ',
  color = {
    bg = colors.black_bg,
    fg = colors.grey_fg,
    gui = 'bold'
  },
  separator = '',
}
local filetype = {
  'filetype',
  colored = true,
  color = {
    bg = colors.black_bg,
    fg = colors.grey_fg,
    gui = 'bold'
  },
  separator = '',
}
local location = {
  'location',
  color = {
    bg = colors.lightgray,
    fg = colors.black,
    gui = 'bold'
  },
  separator = {
    left = '',
    right = ''
  },
}


local gruvbox = {
  normal = {
    a = {bg = colors.blue,     fg = colors.black, gui = 'bold'},
    b = {bg = colors.black_bg, fg = colors.grey_fg},
    c = {bg = colors.black_bg, fg = colors.grey_fg},
    x = {bg = colors.black_bg, fg = colors.grey_fg},
    y = {bg = colors.black_bg, fg = colors.grey_fg},
    z = {bg = colors.black_bg, fg = colors.grey_fg},
  },
  insert = {
    a = {bg = colors.green,    fg = colors.black, gui = 'bold'},
    b = {bg = colors.black_bg, fg = colors.grey_fg},
    c = {bg = colors.black_bg, fg = colors.grey_fg},
    x = {bg = colors.black_bg, fg = colors.grey_fg},
    y = {bg = colors.black_bg, fg = colors.grey_fg},
    z = {bg = colors.black_bg, fg = colors.grey_fg},
  },
  visual = {
    a = {bg = colors.yellow,   fg = colors.black, gui = 'bold'},
    b = {bg = colors.black_bg, fg = colors.grey_fg},
    c = {bg = colors.black_bg, fg = colors.grey_fg},
    x = {bg = colors.black_bg, fg = colors.grey_fg},
    y = {bg = colors.black_bg, fg = colors.grey_fg},
    z = {bg = colors.black_bg, fg = colors.grey_fg},
  },
  replace = {
    a = {bg = colors.red,      fg = colors.black, gui = 'bold'},
    b = {bg = colors.black_bg, fg = colors.grey_fg},
    c = {bg = colors.black_bg, fg = colors.grey_fg},
    x = {bg = colors.black_bg, fg = colors.grey_fg},
    y = {bg = colors.black_bg, fg = colors.grey_fg},
    z = {bg = colors.black_bg, fg = colors.grey_fg},
  },
  command = {
    a = {bg = '#72c2a9',       fg = colors.black, gui = 'bold'},
    b = {bg = colors.black_bg, fg = colors.grey_fg},
    c = {bg = colors.black_bg, fg = colors.grey_fg},
    x = {bg = colors.black_bg, fg = colors.grey_fg},
    y = {bg = colors.black_bg, fg = colors.grey_fg},
    z = {bg = colors.black_bg, fg = colors.grey_fg},
  },
  inactive = {
    a = {bg = colors.darkgray, fg = colors.gray, gui = 'bold'},
    b = {bg = colors.black_bg, fg = colors.grey_fg},
    c = {bg = colors.black_bg, fg = colors.grey_fg},
    x = {bg = colors.black_bg, fg = colors.grey_fg},
    y = {bg = colors.black_bg, fg = colors.grey_fg},
    z = {bg = colors.black_bg, fg = colors.grey_fg},
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
          globalstatus = true,
          always_divide_middle = true,
          theme = gruvbox,
          component_separators = { left = '', right = ''},
          section_separators = {left = '', right = ''},
          disabled_filetypes = {
            'dashboard',
            'Outline',
            'neotree',
          },
          ignore_focus = {"nvim-tree"},
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          }
        },
        sections = {
          lualine_a = { mode },
          lualine_b = {
            filename,
            branch,
            { function()
                return " "
            end,
              padding = { left = 0, right = 0 },
            },  -- 添加这个空函数作为占位符
            GitRootToParentDirectory,
            { function()
                return " "
            end,
              padding = { left = 0, right = 0 },
            },
            diff,
          },
          lualine_c = { info, diagnostics },
          lualine_x = { fileformat},
          lualine_y = { filesize, filetype },
          lualine_z = {
            { function()
                return " "
            end,
              padding = { left = 0, right = 0 },
            },
            location }
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {'nvim-tree', 'nvim-dap-ui', 'neo-tree'},
      })
    end
  }
}
