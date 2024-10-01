local capabilities = require('cmp_nvim_lsp').default_capabilities()
require("lspconfig").pylsp.setup {
  -- capabilities = capabilities,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          maxLineLength = 200,
        },
        flake8 = {
          maxLineLength = 200,
        },
      }
    }
  }
}
