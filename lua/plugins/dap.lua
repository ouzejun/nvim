vim.keymap.set('n', 'b', '<nop>')
vim.keymap.set('n', 'bb', '<cmd>lua require"dap".toggle_breakpoint()<CR>')
vim.keymap.set('n', 'bc', '<cmd>lua require"dap".continue()<CR>')
vim.keymap.set('n', 'bo', '<cmd>lua require"dap".step_over<CR>')


return {
  'mfussenegger/nvim-dap',
  'rcarriga/nvim-dap-ui',
  'theHamsta/nvim-dap-virtual-text',
}
