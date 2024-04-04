vim.g.mapleader = ' '

-- plugins
require('lazy-init')

-- lsp
require('lsp.init')
require('lsp.languages.snip')
require('lsp.languages.jdtls')
require('lsp.languages.pylsp')
require('lsp.languages.lua_ls')
require('lsp.languages.marksman')

-- dap
require('dap.languages.jdtls')

-- core
require('core.keymaps')
require('core.options')
require('core.base-highlight')

