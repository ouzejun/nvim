return {
  "neovim/nvim-lspconfig",
  opts = { inlay_hints = { enabled = true } },

  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },

  config = function()
    local lspconfig = require("lspconfig")
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"},
      },
    })
    mason_lspconfig.setup({
      automatic_reload = true,
      automatic_server_installation = true,
      automatic_server_upgrade = true,
      automatic_server_update = true,
    })
    mason_lspconfig.setup_handlers({
      function(server_name) -- Default handler for all servers
        lspconfig[server_name].setup{}
      end,
      -- Specific server setup can be done like this:
      -- ["rust_analyzer"] = function()
      --     lspconfig.rust_analyzer.setup{}
      -- end,

      -- Setup for `jdtls`
      ["jdtls"] = function()
        -- Add your `jdtls` specific configuration here
        lspconfig.jdtls.setup{
          -- Your `jdtls` config here
        }
      end,
    })
  end,
}
