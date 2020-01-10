call plug#begin('~/.local/share/nvim/plugged')
	" UI
	Plug 'Nequo/vim-allomancer'
	Plug 'luochen1990/rainbow'
	Plug 'AlessandroYorba/Sierra'
	Plug 'axvr/photon.vim'
	Plug 'andreypopp/vim-colors-plain'
	Plug 'Lokaltog/vim-monotone'

	" Formater
	Plug 'godlygeek/tabular'

	" Helpers
	Plug 'kien/ctrlp.vim'
	Plug 'tpope/vim-commentary'
	Plug 'blueyed/vim-diminactive'

	" Completion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Plug 'autozimu/LanguageClient-neovim', {
	" 	\ 'branch': 'next',
	" 	\ 'do': 'bash install.sh',
	" \ }

	" Languages
	Plug 'fatih/vim-go'
	Plug 'rust-lang/rust.vim'
	Plug 'cespare/vim-toml'
	Plug 'posva/vim-vue'
	Plug 'HerringtonDarkholme/yats.vim'
	Plug 'rhysd/vim-crystal'
	Plug 'wavded/vim-stylus'
	Plug 'tpope/vim-cucumber'
	Plug 'neovimhaskell/haskell-vim'

	" Git
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
call plug#end()
