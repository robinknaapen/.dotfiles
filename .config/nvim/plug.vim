call plug#begin('~/.local/share/nvim/plugged')
	" UI
	Plug 'joshdick/onedark.vim'
	Plug 'luochen1990/rainbow'

	" Formater
	Plug 'godlygeek/tabular'

	" Helpers
	Plug 'kien/ctrlp.vim'
	Plug 'tpope/vim-commentary'

	" NCM
	Plug 'ncm2/ncm2'
	Plug 'roxma/nvim-yarp'
	Plug 'ncm2/ncm2-go'

	" Languages
	Plug 'fatih/vim-go'
	Plug 'lifepillar/pgsql.vim'
	Plug 'cespare/vim-toml'

	" Git
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
call plug#end()
