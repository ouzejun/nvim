local dap = require('dap')

dap.adapters.java = function(callback)
  callback({
    type = 'server';
    host = '127.0.0.1';
    port = 5005;
  })
end

dap.configurations.java = {
  {
    type = 'java',
    request = 'launch',
    name = "Debug (Attach) - Remote",
    hostName = "127.0.0.1",
    port = 5005,

    mainClass = vim.fn.fnamemodify(vim.fn.expand('%'), ':t:r'), -- 修改这里
    javaExec = "/usr/bin/java",
    programArguments = "${file}",
    projectName = vim.fn.fnamemodify(vim.fn.expand('%:p:h'), ':t'),
    stepFilters = {
      skipClasses = {"java.*"},
      skipStaticInitializers = true,
      skipSynthetics = true,
      skipConstructors = true,
    },
  },
}

