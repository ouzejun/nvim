return {
  'nvim-telescope/telescope-project.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = function ()
    require('telescope').load_extension('project')
    require('telescope').setup {
      extensions = {
        project = {
          base_dirs = {
            { path = "/media/yangtao/MySSD/work", max_depth = 8, },
            { path = "~/work", max_depth = 8, },
          }
        }
      }
    }
  end
}
