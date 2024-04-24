return {
  "lewis6991/gitsigns.nvim",
  config = function ()
    require("gitsigns").setup({
      signs = {
        add          = { hl = "GitSignsAdd",    text = " ",  numhl = "GitSignsAddNr" },
        change       = { hl = "GitSignsChange", text = " ",  numhl = "GitSignsChangeNr" },
        delete       = { hl = "GitSignsDelete", text = " ",  numhl = "GitSignsDeleteNr" },
        topdelete    = { hl = "GitSignsDelete", text = " ",  numhl = "GitSignsDeleteNr" },
        changedelete = { hl = "GitSignsChange", text = " ",  numhl = "GitSignsChangeNr" },
      },

      signcolumn = true,
      numhl      = false,
      linehl     = false,
      word_diff  = false,
      watch_gitdir = {
        follow_files = true
      },
      auto_attach = true,
      attach_to_untracked = false,
      current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
        delay = 100,
        ignore_whitespace = false,
        virt_text_priority = 100,
      },
    })
  end
}

