local wk = require("which-key")
wk.add{
  {
    "<leader>d",
    '<CMD>Lazydocker<CR>',
    mode = "n", desc = "open lazydocker",
    icon = {
      icon = " ",
      color = "blue"
    }
  }
}
