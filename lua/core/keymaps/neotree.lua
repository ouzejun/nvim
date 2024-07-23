local wk = require("which-key")
wk.add{
  {
    "<leader>T",
    "<cmd>Neotree dir=./ toggle left<CR>",
    mode = "n", desc = "toggle neotree",
    icon = {
      icon = " ",
      color = "red"
    }
  },
  {
    "<leader>t",
    "<cmd>Neotree dir=./ toggle float<CR>",
    mode = "n", desc = "toggle neotree",
    icon = {
      icon = " ",
      color = "red"
    }
  }
}
