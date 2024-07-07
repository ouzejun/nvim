require("which-key").register{
  ["<leader>i"] = {
    name = "AI",
    mode = "n",
    c = { "<cmd>CopilotChatToggle<CR>", "交互界面" },
    q = { function()
      local input = vim.fn.input("Quick Chat: ")
      if input ~= "" then
        require("CopilotChat").ask(input,
          { selection = require("CopilotChat.select").buffer }
        )
      end
    end, "本文问答" },
    d = { "<cmd>CopilotChatDocs<CR>", "文档" },
    o = { "<cmd>CopilotChatOptimize<CR>", "优化" },
    f = { "<cmd>CopilotChatFix<CR>", "修复" },
  },
}
require("which-key").register{
  ["<leader>i"] = {
    name = "AI",
    mode = "v",
    q = { function()
      local input = vim.fn.input("Quick Chat: ")
      if input ~= "" then
        require("CopilotChat").ask(input, { selection = require("CopilotChat.select").visual })
      end
    end, "所选问答" },
    d = { "<cmd>CopilotChatDocs<CR>", "所选文档" },
    f = { "<cmd>CopilotChatFix<CR>", "所选修复" },
  },
}
