local keymap = vim.keymap
local wk = require("which-key")

wk.add({
  { "g", group = "lsp saga"},

  {
    "ga",
    "<cmd>Lspsaga code_action<CR>",
    mode = "n", desc = "code action",
    icon = {
      icon = " ",
      color = "blue",
    }
  },
  {
    "gd",
    "<cmd>Lspsaga preview_definition<CR>",
    mode = "n", desc = "preview definition",
    icon = {
      icon = " ",
      color = "red",
    }
  },
  {
    "gD",
    "<cmd>Lspsaga goto_definition<CR>",
    mode = "n", desc = "goto definition",
    icon = {
      icon = " ",
      color = "red",
    }
  },
  {
    "gr",
    "<cmd>Lspsaga rename<CR>",
    mode = "n", desc = " multi rename",
    icon = {
      icon = " ",
      color = "orange",
    }
  },
  {
    "gh",
    "<cmd>Lspsaga hover_doc<CR>",
    mode = "n", desc = "float doc",
    icon = {
      icon = " ",
      color = "green",
    }
  },
  {
    "gH",
    "<cmd>Lspsaga signature_help<CR>",
    mode = "n", desc = "right doc",
    icon = {
      icon = " ",
      color = "green",
    }
  },
  {
    "gj",
    "<cmd>Lspsaga diagnostic_jump_next<CR>",
    mode = "n", desc = "diagnostic jump next",
    icon = {
      icon = "󱞤 ",
      color = "red",
    }
  },
  {
    "gf",
    "<cmd>Lspsaga finder<CR>",
    mode = "n", desc = "finder",
    icon = {
      icon = "󰈞 ",
      color = "azure",
    }
  },
  {
    "gk",
    "<cmd>Lspsaga diagnostic_jump_prev<CR>",
    mode = "n", desc = "diagnostic jump prev",
    icon = {
      icon = "󱞢 ",
      color = "red",
    }
  },
  {
    "go",
    "<cmd>Lspsaga outline<CR>",
    mode = "n", desc = "outline",
    icon = {
      icon = " ",
      color = "purple",
    }
  },
  {
    "gt",
    "<cmd>Lspsaga term_toggle<CR>",
    mode = "n", desc = "terminal",
    icon = {
      icon = " ",
      color = "grey",
    }
  },
  {
    "gw",
    "<cmd>Lspsaga show_workspace_diagnostics ++normal <CR>",
    mode = "n", desc = "workspace diagnostics",
    icon = {
      icon = " ",
      color = "red",
    }
  },
})

keymap.set("t", "<c-d>", "<cmd>Lspsaga term_toggle<CR>")
