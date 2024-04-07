return {
  "ptdewey/yankbank-nvim",
  config = function()
    require('yankbank').setup({
      keymaps = {
        navigation_next = "k",
        navigation_prev = "i",
      },
    })
  end,
}

