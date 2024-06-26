return {
  "hachy/cmdpalette.nvim",
  config = function()
    require("cmdpalette").setup({
      win = {
        height = 0.5,
        width = 0.8,
        title = "command-line",
        border = "rounded",
        title_pos = "center",
      },
      sign = {
        text = ":",
      },
      buf = {
        filetype = "cmdpalette",
        syntax = "cmdpalette",
      }
    })
  end,
}
