vim.api.nvim_set_hl(0, "CmpItemMenu",
	            { fg = "#000080", bg = '#000080' })

local M = {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"L3MON4D3/LuaSnip",
	},
}

M.config = function()
	local cmp = require("cmp")
	vim.opt.completeopt = { "menu", "menuone", "noselect" }

	local kind_icons = {
		Text = " ",
		Method = "󰆧",
		Function = "ƒ ",
		Constructor = " ",
		Field = "󰜢 ",
		Variable = " ",
		Constant = " ",
		Class = " ",
		Interface = "󰜰 ",
		Struct = " ",
		Enum = "了 ",
		EnumMember = " ",
		Module = "",
		Property = " ",
		Unit = " ",
		Value = "󰎠 ",
		Keyword = "󰌆 ",
		Snippet = " ",
		File = " ",
		Folder = " ",
		Color = " ",
	}
	cmp.setup({
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body)
			end,
		},
		window = {
			completion = cmp.config.window.bordered(),
			documentation = cmp.config.window.bordered(),
		},
		mapping = cmp.mapping.preset.insert({
		  ["<C-d>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-w>"] = cmp.mapping.select_prev_item(),
			["<C-s>"] = cmp.mapping.select_next_item(),
			["<C-P>"] = cmp.mapping.complete(),
			["<C-p>"] = cmp.mapping.abort(),
			["<CR>"] = cmp.mapping.confirm({ select = false }),
			['<Tab>'] = cmp.mapping(function(fallback)
                            if cmp.visible() then
                                cmp.select_next_item()
                            else
				fallback()
                            end
                        end, { 'i', 's' }),
		}),
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "nvim_lua" },
			{ name = "luasnip" },
		}, {
			{ name = "buffer" },
			{ name = "path" },
		}, {
			{ name = "neorg" },
		}),

		formatting = {
			format = function(entry, vim_item)
				-- Kind icons
				vim_item.kind = string.format("%s %s",
				  kind_icons[vim_item.kind], vim_item.kind)
				-- Source
				vim_item.menu = ({
					buffer = "[Buffer]",
					nvim_lsp = "[LSP]",
					luasnip = "[LuaSnip]",
					nvim_lua = "[NvimAPI]",
					path = "[Path]",
				})[entry.source.name]
				return vim_item
			end,
		},
	})

	cmp.setup.cmdline(":", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = "path" },
		}, {
			{ name = "cmdline" },
		}),
	})
end


return M

