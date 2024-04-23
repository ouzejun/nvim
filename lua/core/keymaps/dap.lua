local keymap = vim.keymap

keymap.set('n', 'b', '<nop>')
keymap.set('n', 'bb', '<cmd>lua require"dap".toggle_breakpoint()<CR>')
-- 相当于toggel方法
keymap.set({"n", "v"}, "br", ":DapRestartFrame<CR>",
  {silent = true, noremap = true, buffer = bufnr})
keymap.set({"n", "v"}, "bn", ":DapContinue<CR>",
  {silent = true, noremap = true, buffer = bufnr})
keymap.set({"n", "v"}, "bi", ":DapStepInto<CR>",
  {silent = true, noremap = true, buffer = bufnr})
keymap.set({"n", "v"}, "bo", ":DapStepOut<CR>",
  {silent = true, noremap = true, buffer = bufnr})
keymap.set({"n", "v"}, "bb", "<cmd>lua require'dap'.toggle_breakpoint()<CR>",
  {silent = true, noremap = true, buffer = bufnr})
keymap.set("n", "bc", "<cmd> lua require'dapui'.toggle()<CR>",
  {silent = true, noremap = true, buffer = bufnr})
