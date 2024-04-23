local keymap = vim.keymap

-- normal
keymap.set("n", "<leader>hc", "<cmd>CopilotChatToggle<CR>")
keymap.set("n", "<leader>hd", "<cmd>CopilotChatDocs<CR>")
keymap.set("n", "<leader>ho", "<cmd>CopilotChatOptimize<CR>")
keymap.set("n", "<leader>hf", "<cmd>CopilotChatFix<CR>")
keymap.set("n", "<leader>hq",
  function()
    local input = vim.fn.input("Quick Chat: ")
    if input ~= "" then
      require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
    end
  end
)
-- visual
keymap.set("v", "<leader>hd", "<cmd>CopilotChatDocs<CR>")
keymap.set("v", "<leader>hf", "<cmd>CopilotChatFix<CR>")
keymap.set("v", "<leader>ho", "<cmd>CopilotChatOptimize<CR>")
keymap.set("v", "<leader>hq",
  function()
    local input = vim.fn.input("Quick Chat: ")
    if input ~= "" then
      require("CopilotChat").ask(input, { selection = require("CopilotChat.select").visual })
    end
  end
)
