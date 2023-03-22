local lsp = require('lsp-zero')
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

lsp.preset({
	manage_nvim_cmp = {
		set_sources = 'recommended'
	}
})

cmp.setup({
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
	},
	completion = {
		autocomplete = false,
		completeopt = 'menu,menuone,noinsert,noselect',
	},
	mapping = {
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		['<C-Space>'] = cmp.mapping.complete(),
		['<Tab>'] = cmp_action.tab_complete(),
		['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
		['<C-f>'] = cmp_action.luasnip_jump_forward(),
		['<C-b>'] = cmp_action.luasnip_jump_backward(),
	}
})

lsp.ensure_installed({
	'efm'
})

lsp.configure('bufls', {
	filetypes = { 'proto' },
})

lsp.configure('efm', {
	filetypes = { 'proto' },
})

lsp.set_sign_icons()
vim.diagnostic.config(lsp.defaults.diagnostics({}))

-- Ensure cmp does not error in nvim workspace
lsp.nvim_workspace()
lsp.setup()

vim.api.nvim_create_autocmd("BufWritePre", {
	buffer = buffer,
	callback = function()
		vim.lsp.buf.format { async = false }
	end
})

require('lsp_signature').setup({})
