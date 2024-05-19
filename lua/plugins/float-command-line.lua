return {
  "hachy/cmdpalette.nvim",
  config = function()
    require("cmdpalette").setup({
      win = {
        title = "command-line",
        border = "rounded",
        title_pos = "center",
      },
      sign = {
        text = ":",
      }
    })
  end,
}
