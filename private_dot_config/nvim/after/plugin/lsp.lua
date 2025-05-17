vim.lsp.config.gopls = {
	settings = {
		gopls = {
			analyses = {
				shadow = true,
			},
			staticcheck = true,
			gofumpt = true,
			usePlaceholders = true,
			hints = {
				assignVariableTypes = true,
				compositeLiteralFields = true,
				constantValues = true,
				parameterNames = true,
				rangeVariableTypes = true,
				functionTypeParameters = true,
			},
		},
	},
}

vim.lsp.config.volar = {
	init_options = {
		vue = {
			hybridMode = false
		},
	},
	settings = {
		typescript = {
			inlayHints = {
				enumMemberValues = {
					enabled = true,
				},
				functionLikeReturnTypes = {
					enabled = true,
				},
				propertyDeclarationTypes = {
					enabled = true,
				},
				parameterTypes = {
					enabled = true,
					suppressWhenArgumentMatchesName = true,
				},
				variableTypes = {
					enabled = true,
				},
			},
		},
	},
}

vim.lsp.config.gopls = {
	settings = {
		gopls = {
			analyses = {
				shadow = true,
			},
			staticcheck = true,
			gofumpt = true,
			usePlaceholders = true,
			hints = {
				assignVariableTypes = true,
				compositeLiteralFields = true,
				constantValues = true,
				parameterNames = true,
				rangeVariableTypes = true,
				functionTypeParameters = true,
			},
		},
	},
}

vim.lsp.config.volar = {
	init_options = {
		vue = {
			hybridMode = false
		},
	},
	settings = {
		typescript = {
			inlayHints = {
				enumMemberValues = {
					enabled = true,
				},
				functionLikeReturnTypes = {
					enabled = true,
				},
				propertyDeclarationTypes = {
					enabled = true,
				},
				parameterTypes = {
					enabled = true,
					suppressWhenArgumentMatchesName = true,
				},
				variableTypes = {
					enabled = true,
				},
			},
		},
	},
}

vim.lsp.config.jsonls = {
	settings = {
		json = {
			schemas = require("schemastore").json.schemas(),
			validate = { enable = true },
		},
	},
}

vim.lsp.config.yamlls = {
	settings = {
		yaml = {
			schemas = require("schemastore").yaml.schemas(),
			validate = { enable = true },
		},
	},
}
