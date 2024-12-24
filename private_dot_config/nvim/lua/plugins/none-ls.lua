return {
	'nvimtools/none-ls.nvim',
	dependencies = {
		'lewis6991/gitsigns.nvim'
	},
	event = { "BufWritePre" },
	opts = function()
		local null_ls = require("null-ls")

		return {
			sources = {
				-- standalone
				null_ls.builtins.code_actions.gitsigns,
				null_ls.builtins.code_actions.impl,

				-- linters
				null_ls.builtins.diagnostics.trail_space,
				null_ls.builtins.diagnostics.golangci_lint, -- https://github.com/golangci/golangci-lint
				null_ls.builtins.diagnostics.sqruff,    -- https://github.com/quarylabs/sqruff

				-- null_ls.builtins.diagnostics.vacuum,      -- https://quobix.com/vacuum
				-- formatters
				null_ls.builtins.formatting.goimports,
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.prettierd,
				null_ls.builtins.formatting.sqruff,
			}
		}
	end,
}
