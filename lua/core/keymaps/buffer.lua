local wk = require("which-key")
wk.add{
  { "t", group = "Buffer or TODO" },

  {
    "tl",
    "<cmd>BufferLineCycleNext<CR>",
    mode = "n", desc = "next buffer",
    icon = {
      icon = " ",
      color = "yellow",
    }
  },
  {
    "th",
    "<cmd>BufferLineCyclePrev<CR>",
    mode = "n", desc = "prev buffer",
    icon = {
      icon = " ",
      color = "yellow",
    }
  },
  {
    "tp",
    "<cmd>BufferLinePick<CR>",
    mode = "n", desc = "pick buffer",
    icon = {
      icon = " ",
      color = "yellow",
    }
  },
  {
    "tx",
    "<cmd>BufferLinePickClose<CR>",
    mode = "n", desc = "pick and close buffer",
    icon = {
      icon = " ",
      color = "yellow",
    }
  },
  {
    "t<s-l>",
    "<cmd>BufferLineMoveNext<CR>",
    mode = "n", desc = "move buffer to next",
    icon = {
      icon = " ",
      color = "yellow",
    }
  },
  {
    "t<s-h>",
    "<cmd>BufferLineMovePrev<CR>",
    mode = "n", desc = "move buffer to prev",
    icon = {
      icon = " ",
      color = "yellow",
    }
  },
}
