local luasnip = require("luasnip")
local cmp = require('cmp')

local kinds = {
	Text = '  ',
	Method = '  ',
	Function = '  ',
	Constructor = '  ',
	Field = '  ',
	Variable = '  ',
	Class = '  ',
	Interface = '  ',
	Module = '  ',
	Property = '  ',
	Unit = '  ',
	Value = '  ',
	Enum = '  ',
	Keyword = '  ',
	Snippet = '  ',
	Color = '  ',
	File = '  ',
	Reference = '  ',
	Folder = '  ',
	EnumMember = '  ',
	Constant = '  ',
	Struct = '  ',
	Event = '  ',
	Operator = '  ',
	TypeParameter = '  ',
}

cmp.setup({
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
		{ name = 'nvim_lua' }

		-- TODO:
		-- { name = "copilot" },
	},

	preselect = 'none',
	completion = {
		completeopt = table.concat(vim.opt.completeopt:get(), ","),
		autocomplete = false,
	},

	formatting = {
		format = function(_, vim_item)
			vim_item.kind = (kinds[vim_item.kind] or '') .. vim_item.kind
			return vim_item
		end,
	},

	mapping = cmp.mapping.preset.insert({
		['<C-Space>'] = cmp.mapping.complete(),

		['<CR>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				if luasnip.expandable() then
					luasnip.expand()
				else
					cmp.confirm({
						select = true,
					})
				end
			else
				fallback()
			end
		end),

		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.locally_jumpable(1) then
				luasnip.jump(1)
			else
				fallback()
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.locally_jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}),

	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},

	experimental = {
		ghost_text = true,
	},
})
