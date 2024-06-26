local keymap = vim.keymap

require("which-key").register({
  g = {
    name = "lsp saga",
    a = { "<cmd>Lspsaga code_action<CR>", "Code Action" },
    d = { "<cmd>Lspsaga peek_definition<CR>", "Peek Definition" },
    D = { "<cmd>Lspsaga goto_definition<CR>", "Goto Definition" },
    r = { "<cmd>Lspsaga rename<CR>", "Rename" },
    h = { "<cmd>Lspsaga hover_doc<CR>", "Hover Doc" },
    H = { "<cmd>Lspsaga hover_doc ++keep<CR>", "Hover Doc Keep" },
    j = { "<cmd>Lspsaga diagnostic_jump_next<CR>", "Diagnostic Jump Next" },
    f = { "<cmd>Lspsaga finder<CR>", "Finder" },
    k = { "<cmd>Lspsaga diagnostic_jump_prev<CR>", "Diagnostic Jump Prev" },
    o = { "<cmd>Lspsaga outline<CR>", "Outline" },
    t = { "<cmd>Lspsaga term_toggle<CR>", "Term Toggle" },
    w = { "<cmd>Lspsaga show_workspace_diagnostics ++normal <CR>", "Show Workspace Diagnostics" },
  }
})

keymap.set("t", "<c-d>", "<cmd>Lspsaga term_toggle<CR>")
