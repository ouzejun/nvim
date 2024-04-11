vim.cmd [[
  highlight DashboardHeader guifg=#8CAAEE
  highlight DashboardFooter guifg=#F38BA8
  highlight DashboardShortcut1 guifg=#F38BA8
  highlight DashboardShortcut2 guifg=#A6E3A1
  highlight DashboardShortcut3 guifg=#F9E2AF
  highlight DashboardShortcut4 guifg=#89B4FA
  highlight DashboardShortcut5 guifg=#F5C2E7
  highlight DashboardShortcut6 guifg=#94E2D5
  highlight DashboardProjectTitle guifg=#F38BA8
  highlight DashboardMruTitle guifg=#F9E2AF
  highlight DashboardFiles guifg=#F5C2E7
]]

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
            key = 'm',
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
          { icon = ' ',
            icon_hl = 'DashboardShortcut1',
            desc = 'Terminal',
            group = 'DashboardShortcut1',
            action = 'Lspsaga term_toggle',
            key = 't',
          },
        },
        project = {
          enable = true,
          limit = 7,
        },
        mru = {
          limit = 14,
        },
        packages = { enabel = true },
        disable_mode = true,
      }
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
