local wk = require("which-key")
wk.add{
  {
    ":",
    "<Plug>(cmdpalette)",
    mode = "n", desc = "command line",
    icon = {
      icon = " ",
      color = "grey"
    }
  }
}
