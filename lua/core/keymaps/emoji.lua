local wk = require("which-key")
wk.add{
  {
    "<leader>fe",
    "<cmd>Telescope emoji<CR>",
    mode = "n", desc = "find emoji"
  }
}
