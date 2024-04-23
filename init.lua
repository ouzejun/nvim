-- plugins
require('lazy-init')

-- lsp
require('lsp.init')
require('lsp.languages.bash')
require('lsp.languages.jdtls')
require('lsp.languages.lua_ls')
require('lsp.languages.marksman')
require('lsp.languages.pylsp')
require('lsp.languages.rust')
require('lsp.languages.snip')
require('lsp.languages.typst')

-- dap
require('dap.dapui')
require('dap.languages.jdtls')
require('dap.languages.python')

-- core
-- keymaps
require('core.keymaps.base')
require('core.keymaps.buffer')
require('core.keymaps.copilot')
require('core.keymaps.copilotchat')
require('core.keymaps.dap')
require('core.keymaps.dashboard')
require('core.keymaps.emoji')
require('core.keymaps.fload')
require('core.keymaps.lspsaga')
require('core.keymaps.neotree')
require('core.keymaps.telescope')
require('core.keymaps.todo')
require('core.keymaps.yankbank')

-- options
require('core.options.base')

-- highlights
require('core.highlights.base')

-- neovide
require('core.neovide')

