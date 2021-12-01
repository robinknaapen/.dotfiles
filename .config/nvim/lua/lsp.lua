local nvim_lsp = require('lspconfig')

local servers = { 'gopls', 'dartls', 'volar' }
for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup{}
end

-- LSP Extentions
require('lsp_signature').setup()
require('lspfuzzy').setup{}

-- LSP Keybindings
local cmp = require('cmp')
cmp.setup({
	completion = {
		autocomplete = false,
		completeopt = 'menu,menuone,noinsert,noselect,preview',
	},
	mapping = {
		['<C-Space>'] = cmp.mapping(cmp.mapping.complete()         , { 'i' , 'c' }),
		['<Tab>']     = cmp.mapping(cmp.mapping.select_next_item() , { 'i' , 's' }),
		['<S-Tab>']   = cmp.mapping(cmp.mapping.select_prev_item() , { 'i' , 's' }),

		['<CR>'] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = "buffer" },
	})
})
