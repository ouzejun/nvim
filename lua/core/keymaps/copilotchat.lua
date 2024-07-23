local wk = require("which-key")
wk.add{
  { "<leader>i", group = "ai copilot", },
  {
    "<leader>ic",
    "<cmd>CopilotChatToggle<CR>",
    mode = "n", desc = "interaction chat",
    icon = {
      icon = " ",
      color = "blue",
    }
  },
  {
    "<leader>iq",
    function()
      local input = vim.fn.input("Quick Chat: ")
      if input ~= "" then
        require("CopilotChat").ask(input,
          { selection = require("CopilotChat.select").buffer }
        )
      end
    end,
    mode = { "n", "v" }, desc = "quick chat",
    icon = {
      icon = " ",
      color = "blue",
    }
  },
  {
    "<leader>id",
    "<cmd>CopilotChatDocs<CR>",
    mode = { "n", "v" }, desc = "create document",
    icon = {
      icon = " ",
      color = "blue",
    }
  },
  {
    "<leader>if",
    "<cmd>CopilotChatFix<CR>",
    mode = { "n", "v" }, desc = "fix code",
    icon = {
      icon = " ",
      color = "blue",
    }
  },
  {
    "<leader>io",
    "<cmd>CopilotChatOptimize<CR>",
    mode = { "n", "v" }, desc = "optimize",
    icon = {
      icon = " ",
      color = "blue",
    }
  },
}
