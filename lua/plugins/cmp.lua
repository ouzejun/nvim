vim.api.nvim_set_hl(0, "CmpItemMenu",
  { fg = none })

local M = {
	"hrsh7th/nvim-cmp",
	dependencies = {
    'neovim/nvim-lspconfig',
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
    "saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
	},
}

M.config = function()
	local cmp = require("cmp")
  local luasnip = require("luasnip")
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
    completion = {
      Keyword_length = 0,
      completeopt = 'menu,menuone,noselect',
    },
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
		  ["<C-w>"] = cmp.mapping.scroll_docs(-4),
			["<C-s>"] = cmp.mapping.scroll_docs(4),
      ["<C-e>"] = cmp.mapping.close(),
			["<C-P>"] = cmp.mapping.complete(),
			["<C-p>"] = cmp.mapping.abort(),
			["<CR>"] = cmp.mapping.confirm({ select = false }),
			['<Tab>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump()
        else
          fallback()
        end
      end, { 'i', 's' }),
      ['<S-Tab>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif luasnip.jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end, { 'i', 's' }),
    }),
    sources = {
      { name = 'nvim_lsp', priority = 7 },
      { name = 'nvim_lua', priority = 2 },
      { name = 'luasnip', priority = 6 },
      { name = 'buffer', priority = 5 },
      { name = 'path', priority = 4},
      -- { name = 'neorg', priority = 6 },
      { name = 'emoji', priority = 3 },
      -- { name = 'cmdline', priority = 1}
    },
    formatting = {
      format = function(entry, vim_item)
        -- Kind icons
        vim_item.kind = string.format("%s %s",
          kind_icons[vim_item.kind], vim_item.kind)
        -- Source
        vim_item.menu = ({
          buffer   = "[Buffer]",
          nvim_lsp = "[LSP]",
          luasnip  = "[LuaSnip]",
          nvim_lua = "[NvimAPI]",
          path     = "[Path]",
          emoji    = "[Emoji]",
          cmdline  = "[cmd]",
        })[entry.source.name]
        return vim_item
      end,
    },
})

  cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = "cmdline" },
      { name = "path" },
    }),
  })

  cmp.setup.filetype('cmdpalette', {
    sources = cmp.config.sources({
      { name = "cmdline" },
      { name = "path" },
    }),
  })
end


return M

