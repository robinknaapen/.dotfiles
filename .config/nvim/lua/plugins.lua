vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use {
		-- Packer manage itself
		'wbthomason/packer.nvim',

		-- GUI
		'xiyaowong/nvim-transparent',
		'axvr/photon.vim',

		-- Formater
		'godlygeek/tabular',

		-- Helpers
		'numToStr/Comment.nvim',
		'blueyed/vim-diminactive',
		'ojroques/nvim-lspfuzzy',
		'junegunn/fzf.vim',
		'airblade/vim-rooter',

		-- Completion
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/nvim-cmp',
		'hrsh7th/cmp-buffer',
		'ray-x/lsp_signature.nvim',
		'williamboman/nvim-lsp-installer',

		-- Languages
		'fatih/vim-go',
		'rust-lang/rust.vim',
		'cespare/vim-toml',
		'evanleck/vim-svelte',
		'LnL7/vim-nix',
		'ziglang/zig.vim',

		-- Git
		'tpope/vim-fugitive',
		'airblade/vim-gitgutter',

		config = {
			require('Comment').setup(),
			require('lsp'),
			require('bindings'),
			require('rooter'),
			require('fzf'),
			require('color'),
		}
	}
end)
