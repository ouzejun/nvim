vim.api.nvim_set_hl(0, "DashboardHeader",
  { ctermbg = none, ctermfg = 4 })
vim.api.nvim_set_hl(0, "DashboardFooter",
  { ctermbg = none, ctermfg = 1 })
vim.api.nvim_set_hl(0, "DashboardShortcut1",
  { ctermbg = none, ctermfg = 1 })
vim.api.nvim_set_hl(0, "DashboardShortcut2",
  { ctermbg = none, ctermfg = 2 })
vim.api.nvim_set_hl(0, "DashboardShortcut5",
  { ctermbg = none, ctermfg = 5})
vim.api.nvim_set_hl(0, "DashboardShortcut3",
  { ctermbg = none, ctermfg = 3 })
vim.api.nvim_set_hl(0, "DashboardShortcut4",
  { ctermbg = none, ctermfg = 4 })
vim.api.nvim_set_hl(0, "DashboardShortcut6",
  { ctermbg = none, ctermfg = 6})
vim.api.nvim_set_hl(0, "DashboardProjectTitle",
  { ctermbg = none, ctermfg = 1 })
vim.api.nvim_set_hl(0, "DashboardMruTitle",
  { ctermbg = none, ctermfg = 3 })
vim.api.nvim_set_hl(0, "DashboardFiles",
  { ctermbg = none, ctermfg = 5 })

return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {
        header = {
          "███╗     ██╗ ███████╗  ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
          "██╔██╗   ██║ ██╔════╝ ██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
          "██║╚██╗  ██║ █████╗   ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
          "██║ ╚██╗ ██║ ██╔══╝   ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
          "██║   ╚████║ ███████╗ ╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
          "╚═╝    ╚═══╝ ╚══════╝  ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
        },
        shortcut = {
          { icon = ' ',
            icon_hl = 'DashboardShortcut6',
            desc = 'Projects',
            group = 'DashboardShortcut6',
            action = "lua require'telescope'.extensions.project.project{}",
            key = 'p',
          },
          { icon = ' ',
            icon_hl = 'DashboardShortcut3',
            desc = 'Files',
            group = 'DashboardShortcut3',
            action = 'Telescope find_files',
            key = 'f',
          },
          { icon = ' ',
            icon_hl = 'DashboardShortcut4',
            desc = 'TODO',
            group = 'DashboardShortcut4',
            action = 'TodoTelescope',
            key = 't',
          },
          { icon = ' ',
            icon_hl = 'DashboardShortcut2',
            desc = 'Github',
            group = 'DashboardShortcut2',
            action = '!open https://github.com/',
            key = 'g',
          },
          { icon = '󰗼 ',
            icon_hl = 'DashboardShortcut5',
            desc = 'Quit',
            group = 'DashboardShortcut5',
            action = 'q',
            key = 'q',
          },
        },
        project = {
          enable = true,
          limit = 5,
        },
        mru = {
          limit = 7,
        },
        packages = { enabel = true },
        disable_mode = true,
      }
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
