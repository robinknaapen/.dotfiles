call plug#begin('~/.local/share/nvim/plugged')
	" UI
	Plug 'joshdick/onedark.vim'
	Plug 'luochen1990/rainbow'

	" Formater
	Plug 'godlygeek/tabular'

	" Helpers
	Plug 'kien/ctrlp.vim'
	Plug 'tpope/vim-commentary'
	Plug 'editorconfig/editorconfig-vim'

	" NCM2
	Plug 'autozimu/LanguageClient-neovim', {
		\ 'branch': 'next',
		\ 'do': 'bash install.sh',
	\ }
	Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'
	Plug 'ncm2/ncm2-go'
	Plug 'ncm2/ncm2-tern', {'do': 'yarn'}

	" Languages
	Plug 'fatih/vim-go'
	Plug 'lifepillar/pgsql.vim'
	Plug 'cespare/vim-toml'
	Plug 'posva/vim-vue'

	" Git
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
call plug#end()
