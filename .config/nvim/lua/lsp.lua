local nvim_lsp = require('lspconfig')
local lsp_installer = require("nvim-lsp-installer")
local lsp_installer_servers = require("nvim-lsp-installer.servers")

local servers = {
	gopls = {},
	dartls = {},
	volar = {
        init_options = {
            documentFeatures = {
                documentFormatting = false,
            },
        },
		filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
	},
	pyright = {},
	rnix = {},
	zls = {},
	rust_analyzer = {},
    efm = {
        init_options = {documentFormatting = true},
    },
}

for lsp, opts in pairs(servers) do
	local server_available, requested_server = lsp_installer_servers.get_server(lsp)
	if server_available then
		requested_server:on_ready(function ()
			requested_server:setup(opts)
		end)
		if not requested_server:is_installed() then
			requested_server:install()
		end
	end
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
