local builtin = require('telescope.builtin')
local wk = require("which-key")
wk.add{
  { "<leader>f", group = "telescope" },

  {
    "<leader>ff",
    builtin.find_files,
    mode = "n", desc = "find files",
    icon = {
      icon = " ",
      color = "blue",
    }
  },
  {
    "<leader>fg",
    builtin.live_grep,
    mode = "n", desc = "live grep",
    icon = {
      icon = " ",
      color = "red",
    }
  },
  {
    "<leader>fb",
    builtin.buffers,
    mode = "n", desc = "buffers",
    icon = {
      icon = "󰠷 ",
      color = "green",
    }
  },
  {
    "<leader>fh",
    builtin.help_tags,
    mode = "n", desc = "help tags",
    icon = {
      icon = " ",
      color = "yellow",
    }
  },
}
