local wk = require("which-key")
wk.add{
  { "z", group = "󰿺 " },

  {
    "zO",
    "<cmd>lua require('ufo').openAllFolds()<CR>",
    mode = "n", desc = "open all zoomed",
    icon = {
      icon = " ",
      color = "red",
    }
  },
  {
    "zZ",
    "<cmd>lua require('ufo').closeAllFolds()<CR>",
    mode = "n", desc = "close all zoomed",
    icon = {
      icon = " ",
      color = "red"
    }
  },
  {
    "zz",
    "za",
    mode = "n", desc = "toggle fold",
    icon = {
      icon = "󰿺 ",
      color = "red"
    }
  },
  {
    "zp",
    "<cmd>lua require('ufo').peekFoldedLinesUnderCursor()<CR>",
    mode = "n", desc = "peek fold",
    icon = {
      icon = "󰈈 ",
      color = "red"
    }
  },
}
