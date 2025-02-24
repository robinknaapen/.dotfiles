return {
	'williamboman/mason-lspconfig.nvim',
	dependencies = {
		'neovim/nvim-lspconfig',
		'williamboman/mason.nvim',
		"b0o/schemastore.nvim",
	},
	keys = {
		{
			"\\",
			function()
				vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
			end,
			mode = { "n" },
			desc = "Toggle inlayhints",
		},
		{
			"<leader>rn",
			vim.lsp.buf.rename,
			mode = { "n" },
			desc = "Rename",
		},
	},
	opts = function()
		local mason = require("mason")
		local lspconfig = require('lspconfig')

		mason.setup({})

		return {
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

				tailwindcss = function()
					lspconfig.tailwindcss.setup({
						filetypes = { "html", "css", "scss", "javascript", "typescript", "javascriptreact", "typescriptreact", "svelte", "vue" },
						settings = {
							tailwindCSS = {
								classAttributes = { "class", "className", "class:list", "classList" },
								includeLanguages = {
									vue = "html",
									svelte = "html"
								},
								lint = {
									cssConflict = "warning",
									invalidApply = "error",
									invalidConfigPath = "error",
									invalidScreen = "error",
									invalidTailwindDirective = "error",
									invalidVariant = "error",
									recommendedVariantOrder = "warning"
								},
								validate = true,
							},
						},
					})
				end,

				ts_ls = function()
					local mason_packages = vim.fn.stdpath("data") .. "/mason/packages"
					local volar_path = mason_packages ..
							"/vue-language-server/node_modules/@vue/language-server"

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

				asm_lsp = function()
					lspconfig.asm_lsp.setup({})
				end,

				rust_analyzer = function()
					lspconfig.rust_analyzer.setup({
						settings = {
							['rust-analyzer'] = {
								check = {
									command = "clippy",
								},
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
					lspconfig.jsonls.setup {
						settings = {
							json = {
								schemas = require('schemastore').json.schemas(),
								validate = { enable = true },
							},
						},
					}
				end,

				yamlls = function()
					lspconfig.yamlls.setup({
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
		}
	end,
	lazy = false,
}
