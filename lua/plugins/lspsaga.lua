vim.api.nvim_set_hl(0, "SagaBorder",
    { bg = none, fg = none })
vim.api.nvim_set_hl(0, "SagaNormal",
    { bg = '#000080', fg = none })
vim.api.nvim_set_hl(0, "ActionPreviewNormal",
    { ctermbg = none, ctermfg = 15 })
vim.api.nvim_set_hl(0, "ActionPreviewBorder",
    { ctermbg = none })
vim.api.nvim_set_hl(0, "CodeActionText",
    { ctermbg = none, ctermfg = 8 })
vim.api.nvim_set_hl(0, "CodeActionNumber",
    { ctermbg = none, ctermfg = 4 })

return {
    "nvimdev/lspsaga.nvim",
    config = function()
        require("lspsaga").setup({
            use_saga_diagnostic_sign = true,
	    ui = {
	        code_action = '󰽭',
    	    },
            symbol_in_winbar = {
                enable = false,
            },
	    signature = {
	        enable = true,
	    },
	})
    end,
}

