vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	local use = require('packer').use

	use {
		-- Packer manage itself
		'wbthomason/packer.nvim',

		-- Formater
		'godlygeek/tabular',

		-- Git
		'tpope/vim-fugitive',
		'airblade/vim-gitgutter',

		-- utils
		'fatih/vim-go',

		-- Fix transparency
		'xiyaowong/nvim-transparent',
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },

			-- LSP Signatures
			{ 'ray-x/lsp_signature.nvim' }
		}
	}

	use {
		'thosakwe/vim-flutter'
	}

	use {
		'airblade/vim-rooter',
	}

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	use {
		'junegunn/fzf.vim',
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use {
		"jesseleite/nvim-noirbuddy",
		requires = { "tjdevries/colorbuddy.nvim", branch = "dev" }
	}
end)
