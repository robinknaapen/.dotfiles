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
		-- 'kien/ctrlp.vim',
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

		-- Languages
		'fatih/vim-go',
		'rust-lang/rust.vim',
		'cespare/vim-toml',
		'evanleck/vim-svelte',

		-- Git
		'tpope/vim-fugitive',
		'airblade/vim-gitgutter',

		config = {
			require('Comment').setup()
		}
	}
end)
