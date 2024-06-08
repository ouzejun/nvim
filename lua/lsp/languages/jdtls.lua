require('java').setup()

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require("lspconfig").jdtls.setup {
  capabilities = capabilities,
}
