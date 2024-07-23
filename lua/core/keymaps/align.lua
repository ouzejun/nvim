local keymap = vim.keymap
local wk = require("which-key")
wk.add({
  { "<leader>", group = " 󱁐" },

  {
    "<leader>a",
    "<cmd>EasyAlign<CR>",
    mode = "n", desc = "align",
    icon = {
      icon = " ",
      color = "green",
    }
  },
  {
    "<leader>a",
    "<cmd>EasyAlign<CR>",
    mode = "x",
    desc = "align",
    icon = {
      icon = " ",
      color = "green",
    }
  },
})
