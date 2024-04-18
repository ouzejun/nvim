vim.g.mapleader = ' '

-- plugins
require('lazy-init')

-- lsp
require('lsp.init')
require('lsp.languages.snip')

-- dap
require('dap.dapui')
require('dap.languages.jdtls')
require('dap.languages.python')

-- core
require('core.keymaps')
require('core.options')
require('core.base-highlight')

-- neovide
require('core.neovide')
