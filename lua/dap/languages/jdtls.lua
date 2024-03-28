local dap = require('dap')

dap.adapters.java = function(callback)
  callback({
    type = 'server';
    host = '127.0.0.1';
    port = port;
  })
end

dap.configurations.java = {
  {
    type = 'java';
    request = 'attach';
    name = "Debug (Attach) - Remote";
    hostName = "127.0.0.1";
    port = 5005;
  },
}
