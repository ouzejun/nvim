-- plugins
require('lazy-init')

-- lsp
require('lsp.init')
require('lsp.languages.bash')
require('lsp.languages.html')
require('lsp.languages.jdtls')
require('lsp.languages.js')
require('lsp.languages.json')
require('lsp.languages.lua_ls')
require('lsp.languages.marksman')
require('lsp.languages.pylsp')
require('lsp.languages.rust')
require('lsp.languages.snip')
require('lsp.languages.typst')
require('lsp.languages.xml')
require('lsp.languages.sql')

-- dap
require('dap.dapui')
require('dap.languages.bash')
require('dap.languages.jdtls')
require('dap.languages.nodejs')
require('dap.languages.python')

-- core
-- keymaps
require('core.keymaps.align')
require('core.keymaps.base')
require('core.keymaps.buffer')
require('core.keymaps.copilot')
require('core.keymaps.copilotchat')
require('core.keymaps.dap')
require('core.keymaps.emoji')
require('core.keymaps.fload')
require('core.keymaps.float-command-line')
require('core.keymaps.lspsaga')
require('core.keymaps.neotree')
require('core.keymaps.telescope')
require('core.keymaps.todo')
require('core.keymaps.gitsigns')
require('core.keymaps.lazydocker')

-- options
require('core.options.base')
require('core.options.codesnap')
require('core.options.fidget')

-- highlights
require('core.highlights.base')
require('core.highlights.dashboard')
require('core.highlights.flod')
require('core.highlights.ibl')
require('core.highlights.lspsaga')
require('core.highlights.neotree')
require('core.highlights.dapui')
require('core.highlights.buffer')
require('core.highlights.float-command-line')
require('core.highlights.gitsigns')

-- neovide
require('core.neovide')
