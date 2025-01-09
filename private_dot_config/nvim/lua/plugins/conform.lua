return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	opts = {
		format_on_save = { timeout_ms = 500 },
		formatters_by_ft = {
			go = { "goimports" },
		},
		default_format_opts = {
			lsp_format = "last",
		},
	},
}
