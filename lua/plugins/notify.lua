return {
  'rcarriga/nvim-notify',
  config = function()
    require('notify').setup({
      stages = 'slide',
      timeout = 5000,
      background_colour = '#1e222a',
      text_colour = '#abb2bf',
      icons = {
        ERROR = '',
        WARN = '',
        INFO = '',
        DEBUG = '',
        TRACE = '✎',
      },
    })
  end,
}
