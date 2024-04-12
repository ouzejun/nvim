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
require('dap.dapui')
require('dap.languages.jdtls')
require('dap.languages.python')

-- core
require('core.keymaps')
require('core.options')
require('core.base-highlight')

