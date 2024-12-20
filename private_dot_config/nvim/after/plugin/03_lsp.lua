-- HELPERS
local lspconfig = require 'lspconfig'

require('mason').setup({})
require('mason-lspconfig').setup({
	handlers = {
		function(server_name)
			lspconfig[server_name].setup({})
		end,

		volar = function()
			lspconfig.volar.setup({
				init_options = {
					vue = {
						hybridMode = true,
					},
				},
			})
		end,

		-- qmlls = function()
		-- 	lspconfig.qmlls.setup({})
		-- end,

		ts_ls = function()
			local mason_packages = vim.fn.stdpath("data") .. "/mason/packages"
			local volar_path = mason_packages .. "/vue-language-server/node_modules/@vue/language-server"

			lspconfig.ts_ls.setup({
				filetypes = { "typescript", "javascript", "vue" },
				init_options = {
					plugins = {
						{
							name = "@vue/typescript-plugin",
							location = volar_path,
							languages = { "vue" },
						},
					},
				},
			})
		end,

		rust_analyzer = function()
			lspconfig.rust_analyzer.setup({
				settings = {
					['rust-analyzer'] = {
						check = {
							command = "clippy",
						},

						diagnostics = {
							enable = false,
						}
					}
				}
			})
		end,

		gopls = function()
			lspconfig.gopls.setup({
				settings = {
					gopls = {
						gofumpt = true,
						usePlaceholders = true,
						hints = {
							assignVariableTypes = true,
							compositeLiteralFields = true,
							constantValues = true,
							parameterNames = true,
							rangeVariableTypes = true,
							functionTypeParameters = true,
						}
					}
				}
			})
		end,

		jsonls = function()
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.textDocument.completion.completionItem.snippetSupport = true

			lspconfig.jsonls.setup {
				capabilities = capabilities,

				settings = {
					json = {
						schemas = require('schemastore').json.schemas(),
						validate = { enable = true },
					},
				},
			}
		end,

		yamlls = function()
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.textDocument.completion.completionItem.snippetSupport = true

			lspconfig.yamlls.setup({
				capabilities = capabilities,

				settings = {
					yaml = {
						schemaStore = {
							enable = false,
							url = "",
						},
						schemas = require('schemastore').yaml.schemas(),
					},
				},
			})
		end,
	}
})

vim.api.nvim_create_autocmd("BufWritePre", {
	buffer = buffer,
	callback = function()
		vim.lsp.buf.format { async = false }
	end
})
