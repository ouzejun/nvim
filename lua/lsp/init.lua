require("mason").setup()
require("mason-lspconfig").setup({
    -- Ensure that these servers are installed
    ensure_installed = { "lua_ls", "pylsp", "jdtls", },
})

local function require_all_in_directory(directory)
    local handle = vim.loop.fs_scandir(directory)
    if handle then
        while true do
            local name, _ = vim.loop.fs_scandir_next(handle)
            if name == nil then
                break
            end
            if vim.loop.fs_stat(directory..'/'..name).type == 'file' and name:match(".lua$") then
                local module = name:match("(.+).lua")
                require(directory..'/'..module)
            end
        end
    end
end

require_all_in_directory('lsp/languages')
