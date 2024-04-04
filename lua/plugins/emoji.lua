vim.keymap.set("n", "<leader>fe", "<cmd>Telescope emoji<CR>",
  { noremap = true, silent = true })

return {
  "allaman/emoji.nvim",
  version = "1.0.0", -- optionally pin to a tag
  ft = "markdown", -- adjust to your needs
  dependencies = {
    -- optional for nvim-cmp integration
    "hrsh7th/nvim-cmp",
    -- optional for telescope integration
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    -- default is false
    enable_cmp_integration = true,
    -- optional if your plugin installation directory
    -- is not vim.fn.stdpath("data") .. "/lazy/
  },
  lazy = false,
  configs = function ()
    require("emoji").insert_kaomoji()
    require("emoji").insert_kaomoji_by_group()
    require("emoji").insert()
  end
}
