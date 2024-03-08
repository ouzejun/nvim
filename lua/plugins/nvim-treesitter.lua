return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
	local configs = require("nvim-treesitter.configs")

	configs.setup({
	    ensure_installed = { "c", "lua", "python", "java" },
            highlight = { enable = true, },
	    indent = { enable = true },
	})
    end
}


