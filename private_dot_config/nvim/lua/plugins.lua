vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	local use = require('packer').use

	use {
		-- Packer manage itself
		'wbthomason/packer.nvim',

		-- Formatter
		'godlygeek/tabular',

		-- Git
		'tpope/vim-fugitive',
		'lewis6991/gitsigns.nvim',

		-- utils
		{
			'ray-x/go.nvim',
			requires = {
				'ray-x/guihua.lua'
			}
		},

		-- Allow nvim to handle file[:line[:column]]
		'wsdjeg/vim-fetch',

		-- Highlight colors
		'brenoprata10/nvim-highlight-colors',
	}

	-- Abolish
	use {
		'tpope/vim-abolish',
		requires = {
			'smjonas/live-command.nvim',
		}
	}

	-- LSP
	use {
		-- LSP Support
		'neovim/nvim-lspconfig',
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',

		-- Autocompletion
		'hrsh7th/nvim-cmp',
		'saadparwaiz1/cmp_luasnip',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-nvim-lua',

		-- Snippets
		'L3MON4D3/LuaSnip',
		'rafamadriz/friendly-snippets',

		-- LSP helpers
		'ray-x/lsp_signature.nvim',
		'https://git.sr.ht/~whynothugo/lsp_lines.nvim',

		-- Formatter
		'creativenull/efmls-configs-nvim',

		-- Linting
		'nvimtools/none-ls.nvim',

		-- preview code actions
		{
			'aznhe21/actions-preview.nvim',
			requires = {
				'nvim-telescope/telescope.nvim',
			}
		},

		-- TODO:
		-- {
		-- 	"zbirenbaum/copilot-cmp",
		-- 	requires = {
		-- 		"onsails/lspkind.nvim",
		-- 		"zbirenbaum/copilot.lua",
		-- 	}
		-- },

		-- Schemastores for jsonls and yamlls
		"b0o/schemastore.nvim",

		-- Show lsp progress
		"j-hui/fidget.nvim",
	}

	use {
		'kkrime/project.nvim',
		branch = 'workspace_folders'
	}

	use {
		'numToStr/Comment.nvim',
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' }
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use {
		'JoosepAlviste/nvim-ts-context-commentstring',
	}

	use {
		"jesseleite/nvim-noirbuddy",
		requires = { "tjdevries/colorbuddy.nvim" }
	}

	use {
		"folke/todo-comments.nvim",
		requires = {
			"nvim-lua/plenary.nvim"
		}
	}
end)
