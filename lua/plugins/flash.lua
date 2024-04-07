return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    -- stylua: ignore
    keys = {
      {
        "f", mode = { "n", "x", "o" },
        function() require("flash").jump() end,
        desc = "Flash"
      },
    },
    config = function()
      require("flash").setup({
        modes = {
          -- options used when flash is activated through
          -- a regular search with `/` or `?`
          search = {
            enabled = true, -- enable flash for search
            highlight = { backdrop = true },
            jump = { history = true, register = true, nohlsearch = true },
            search = {
              -- `forward` will be automatically set to the search direction
              -- `mode` is always set to `search`
              -- `incremental` is set to `true` when `incsearch` is enabled
            },
          },
          -- options used when flash is activated through
          -- `f`, `F`, `t`, `T`, `;` and `,` motions
          char = {
            enabled = true,
            -- by default all keymaps are enabled, but you can disable some of 
            -- them,
            -- by removing them from the list.
            keys = {}, --  "f", "F", "t", "T",
            search = { wrap = false },
            highlight = { backdrop = true },
            jump = { register = false },
          },
          -- options used for treesitter selections
          -- `require("flash").treesitter()`
          treesitter = {
            labels = "abcdefghijklmnopqrstuvwxyz",
            jump = { pos = "range" },
            highlight = {
              label = { before = true, after = true, style = "inline" },
              backdrop = false,
              matches = false,
            },
          },
        },
      }) end,
  }
}
