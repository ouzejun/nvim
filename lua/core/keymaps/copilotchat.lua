local keymap = vim.keymap

-- normal
keymap.set("n", "<leader>ic", "<cmd>CopilotChatToggle<CR>")
keymap.set("n", "<leader>id", "<cmd>CopilotChatDocs<CR>")
keymap.set("n", "<leader>io", "<cmd>CopilotChatOptimize<CR>")
keymap.set("n", "<leader>if", "<cmd>CopilotChatFix<CR>")
keymap.set("n", "<leader>iq",
  function()
    local input = vim.fn.input("Quick Chat: ")
    if input ~= "" then
      require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
    end
  end
)
-- visual
keymap.set("v", "<leader>id", "<cmd>CopilotChatDocs<CR>")
keymap.set("v", "<leader>if", "<cmd>CopilotChatFix<CR>")
keymap.set("v", "<leader>io", "<cmd>CopilotChatOptimize<CR>")
keymap.set("v", "<leader>iq",
  function()
    local input = vim.fn.input("Quick Chat: ")
    if input ~= "" then
      require("CopilotChat").ask(input, { selection = require("CopilotChat.select").visual })
    end
  end
)
