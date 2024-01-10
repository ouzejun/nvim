local keymap = vim.keymap
-- accept the current suggestion
keymap.set('i', '<a-m>', 'copilot#Accept("<CR>")', {
    expr = true,
    replace_keycodes = false
    })
vim.g.copilot_no_tab_map = true
-- accept the current suggestion and move to the next one
keymap.set('i', '<a-w>', '<Plug>(copilot-accept-word)')
-- accept the next line
keymap.set('i', '<a-k>', '<Plug>(copilot-accept-line)')
-- next suggestion
keymap.set('i', '<a-l>', '<Plug>(copilot-next)')
-- previous suggestion
keymap.set('i', '<a-j>', '<Plug>(copilot-prev)')
-- cancel
keymap.set('i', '<a-c>', '<Plug>(copilot-cancel)')


return{
    {
        "github/copilot.vim",
    }   
}
