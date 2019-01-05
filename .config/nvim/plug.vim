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

	" vim-codefmt
	Plug 'google/vim-maktaba'
	Plug 'google/vim-codefmt'
	Plug 'google/vim-glaive'

	" NCM2
	Plug 'autozimu/LanguageClient-neovim', {
		\ 'branch': 'next',
		\ 'do': 'bash install.sh',
	\ }
	Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'
	Plug 'ncm2/ncm2-go'
	Plug 'ncm2/ncm2-tern', {'do': 'yarn'}
	Plug 'ncm2/nvim-typescript', {'for': 'typescript', 'do': './install.sh'}
	Plug 'ncm2/ncm2-snipmate'

	" snipmate dependencies
	Plug 'tomtom/tlib_vim'
	Plug 'marcweber/vim-addon-mw-utils'
	Plug 'garbas/vim-snipmate'

	" Languages
	Plug 'fatih/vim-go'
	Plug 'lifepillar/pgsql.vim'
	Plug 'cespare/vim-toml'
	Plug 'posva/vim-vue'
	Plug 'HerringtonDarkholme/yats.vim'

	" Git
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
call plug#end()
