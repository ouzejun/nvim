local capabilities = require('cmp_nvim_lsp').default_capabilities()
require("lspconfig").pylsp.setup {
  capabilities = capabilities,
}
require'lspconfig'.pyright.setup{
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        diagnosticMode = "workspace",
        typeCheckingMode = "off",
        diagnosticSeverityOverrides = {
          ["reportAttributeAccessIssue"] = "none"
        }
      }
    }
  }
}
