return {
  'ray-x/web-tools.nvim',
  config = function ()
    require('web-tools').setup {
      keymaps = {
        rename = nil,  -- by default use same setup of lspconfig
      },
    }
  end
}
