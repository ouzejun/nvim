require('java').setup()
require("lspconfig").jdtls.setup {
  on_attach = function(client, bufnr)
  end,
}
