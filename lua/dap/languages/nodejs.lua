local dap = require('dap')

dap.adapters["pwa-node"] = {
  type = "server",
  host = "localhost",
  port = 5006,
  executable = {
    command = "node",
    -- 💀 Make sure to update this path to point to your installation
    args = {"/home/yangtao/.local/share/nvim/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js", "${port}"}
  }
}

dap.configurations.javascript = {
  {
    type = "pwa-node",
    request = "launch",
    name = "Launch file",
    program = "${file}",
    cwd = "${workspaceFolder}",
  },
}
