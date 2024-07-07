require("which-key").register{
  b = {
    name = "调试操作",
    n = { "<cmd>DapContinue<CR>", "继续" },
    b = { "<cmd>lua require'dap'.toggle_breakpoint()<CR>", "断点" },
    r = { "<cmd>DapRestartFrame<CR>", "重启" },
    i = { "<cmd>DapStepInto<CR>", "进入" },
    o = { "<cmd>DapStepOut<CR>", "越过" },
    l = { "<cmd>lua require'dap'.run_last()<CR>", "运行最后" },
    c = { "<cmd> lua require'dapui'.toggle()<CR>", "打开dap界面" },
  },
}
