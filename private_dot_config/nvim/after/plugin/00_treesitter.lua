local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

parser_config.ohm = {
	install_info = {
		url = "https://github.com/novusnota/tree-sitter-ohm",
		files = { "src/parser.c" },

		branch = "main",
		generate_requires_npm = false,
		requires_generate_from_grammar = false,
	},
	filetype = "ohm",
}

require('nvim-treesitter.configs').setup {
	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	indent = {
		enable = true
	},

	highlight = {
		-- `false` will disable the whole extension
		enable = true,

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	}
}
