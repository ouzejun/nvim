local dap = require('dap')

dap.adapters.python = function(cb, config)
  if config.request == 'attach' then
    local port = 5007
    local host = (config.connect or config).host or '127.0.0.1'
    cb({
      type = 'server',
      port = assert(port, '`connect.port` is required for a python `attach` configuration'),
      host = host,
      options = {
        source_filetype = 'python',
      },
    })
  else
    cb({
      type = 'executable',
      command = '/home/yangtao/.local/share/nvim/mason/packages/debugpy/venv/bin/python3',
      args = { '-m', 'debugpy.adapter' },
      options = {
        source_filetype = 'python',
      },
    })
  end
end

dap.configurations.python = {
  {
    -- The first three options are required by nvim-dap
    type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
    request = 'launch';
    name = "Launch file";

    -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

    program = "${file}"; -- This configuration will launch the current file if used.
    pythonPath = function()
      -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
      -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
      -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
      local cwd = vim.fn.getcwd()
      if vim.fn.executable(cwd .. '/env/bin/python3') == 1 then
        return cwd .. '/env/bin/python3'
      elseif vim.fn.executable(cwd .. '/.env/bin/python3') == 1 then
        return cwd .. '/.env/bin/python3'
      else
        return '/usr/bin/python3'
      end
    end;
  },
}
