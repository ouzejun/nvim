return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "github/copilot.vim" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    opts = {
      debug = true, -- Enable debugging
      -- See Configuration section for rest
      window = {
        layout = "float",
        width = 0.7,
        height = 0.8,
      },
      -- lazy.nvim keys
      -- Quick chat with Copilot
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
}
