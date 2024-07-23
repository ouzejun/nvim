local wk = require("which-key")
wk.add{
  { "G", group = "gitsign" },

  {
    "Gs",
    "<cmd>lua require('gitsigns').stage_hunk()<CR>",
    mode = "n", desc = "hunk change",
    icon = {
      icon = " ",
      color = "red",
    }
  },
  {
    "Gu",
    "<cmd>lua require('gitsigns').undo_stage_hunk()<CR>",
    mode = "n", desc = "undo stage hunk",
    icon = {
      icon = " ",
      color = "blue",
    }
  },
  {
    "Gd",
    "<cmd>lua require('gitsigns').reset_hunk()<CR>",
    mode = "n", desc = "discard hunk",
    icon = {
      icon = " ",
      color = "orange"
    }
  },
  {
    "GD",
    "<cmd>lua require('gitsigns').reset_buffer()<CR>",
    mode = "n", desc = "discard hunk",
    icon = {
      icon = " ",
      color = "orange"
    }
  },
  {
    "Gp",
    "<cmd>lua require('gitsigns').preview_hunk()<CR>",
    mode = "n", desc = "preview hunk",
    icon = {
      icon = "󰷊 ",
      color = "orange"
    }
  },
  {
    "Gl",
    "<cmd>lua require('gitsigns').blame_line(true)<CR>",
    mode = "n", desc = "blame line",
    icon = {
      icon = "󱂷 ",
      color = "orange"
    }
  },
  {
    "Gn",
    "<cmd>lua require('gitsigns').next_hunk()<CR>",
    mode = "n", desc = "next hunk",
    icon = {
      icon = "󰮰 ",
      color = "orange"
    }
  },
}
