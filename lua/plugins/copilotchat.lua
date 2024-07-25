return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "github/copilot.vim" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim"}, -- for curl, log wrapper
    },
    opts = {
      debug = false, -- Enable debugging
      window = {
        layout = "float",
        width = 0.90,
        height = 0.80,
      },
    },
  },
}
