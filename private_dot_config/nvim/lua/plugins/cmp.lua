return {
	'hrsh7th/nvim-cmp',
	lazy = false,
	dependencies = {
		'neovim/nvim-lspconfig',

		"folke/noice.nvim",
		'onsails/lspkind.nvim',

		'saadparwaiz1/cmp_luasnip',
		"hrsh7th/cmp-cmdline",
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-nvim-lua',

		-- {
		-- 	"zbirenbaum/copilot-cmp",
		-- 	main = "copilot_cmp",
		-- 	opts = {},
		-- 	dependencies = {
		-- 		"zbirenbaum/copilot.lua",
		-- 	}
		-- },

		-- Snippets
		'L3MON4D3/LuaSnip',
	},
	event = "InsertEnter",
	config = function()
		local cmp = require('cmp')
		local luasnip = require("luasnip")
		local lspkind = require('lspkind')

		-- Add capabilities of cmp_nvim_lsp to lsp_config
		local lspconfig = require('lspconfig')
		lspconfig.util.default_config = vim.tbl_deep_extend("force", lspconfig.util.default_config, {
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
		})

		cmp.setup.cmdline(':', {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = 'path' },
				{ name = 'cmdline' }
			})
		})

		cmp.setup({
			sources = {
				-- { name = "copilot" },
				{ name = 'nvim_lsp' },
				{ name = 'luasnip', },
				{ name = 'nvim_lua' },
				{ name = 'path' },
				-- { name = 'cmdline' },
			},

			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},

			preselect = 'none',
			completion = {
				completeopt = table.concat(vim.opt.completeopt:get(), ","),
				autocomplete = false,
			},

			formatting = {
				format = lspkind.cmp_format({
					mode = 'symbol',
					maxwidth = {
						menu = 50,
						abbr = 50,
					},
					ellipsis_char = '...',
					show_labelDetails = true,
					symbol_map = {
						Copilot = "",
						Text = "󰉿",
						Method = "󰆧",
						Function = "󰊕",
						Constructor = "",
						Field = "󰜢",
						Variable = "󰀫",
						Class = "󰠱",
						Interface = "",
						Module = "",
						Property = "󰜢",
						Unit = "󰑭",
						Value = "󰎠",
						Enum = "",
						Keyword = "󰌋",
						Snippet = "",
						Color = "󰏘",
						File = "󰈙",
						Reference = "󰈇",
						Folder = "󰉋",
						EnumMember = "",
						Constant = "󰏿",
						Struct = "󰙅",
						Event = "",
						Operator = "󰆕",
						TypeParameter = "",
					}
				})
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
				end, { "i", "s", "c" }),

				["<S-Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif luasnip.locally_jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end, { "i", "s", "c" }),
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
	end,
}
