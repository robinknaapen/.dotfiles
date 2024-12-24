return {
	"nvim-treesitter/nvim-treesitter",
	main = 'nvim-treesitter.configs',
	opts = {
		sync_install = false,
		auto_install = true,
		indent = {
			enable = true
		},
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		}
	},
	build = ":TSUpdate",
}
