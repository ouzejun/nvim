require("mason").setup()
require("mason-lspconfig").setup({
    -- Ensure that these servers are installed
    ensure_installed = { "lua_ls", "jdtls", "pylsp" },
})

