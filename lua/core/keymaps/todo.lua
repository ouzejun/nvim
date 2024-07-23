local wk = require("which-key")
wk.add{
  {
    "tj",
    "<cmd>lua require('todo-comments').jump_next({keywords = {'TODO', 'ERROR', 'WARN', 'HACK', 'OPTM', 'NOTE', 'TEST', 'BUGS', 'DEAD'}})<CR>",
    mode = "n", desc = "next error/warning todo comment",
    icon = {
      icon = "󰒭 ",
      color = "red",
    }
  },
  {
    "tk",
    "<cmd>lua require('todo-comments').jump_prev({keywords = {'TODO', 'ERROR', 'WARN', 'HACK', 'OPTM', 'NOTE', 'TEST', 'BUGS', 'DEAD'}})<CR>",
    mode = "n", desc = "previous error/warning todo comment",
    icon = {
      icon = "󰒮 ",
      color = "red",
    }
  },
  {
    "tt",
    "<cmd>TodoTelescope<CR>",
    mode = "n", desc = "toggle todo telescope",
    icon = {
      icon = " ",
      color = "red",
    }
  },
  {
    "tq",
    "<cmd>TodoQuickFix<CR>",
    mode = "n", desc = "toggle todo Quickfix",
    icon = {
      icon = "󰁨 ",
      color = "red",
    }
  },
  {
    "tr",
    "<cmd>TodoLoclist<CR>",
    mode = "n", desc = "toggle todo Local list",
    icon = {
      icon = " ",
      color = "red",
    }
  },
}
