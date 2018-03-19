call plug#begin('~/.local/share/nvim/plugged')
	" UI
	Plug 'joshdick/onedark.vim'

	" Formater
	Plug 'sbdchd/neoformat'
	Plug 'Chiel92/vim-autoformat'
    Plug 'mattn/vim-sqlfmt'

	" Helpers
	Plug 'kien/ctrlp.vim'
	Plug 'tpope/vim-commentary'
	Plug 'vim-syntastic/syntastic'

	" NCM
	Plug 'roxma/nvim-completion-manager'
	Plug 'roxma/nvim-cm-tern',  { 'for': 'javascript', 'do': 'yarn install' }
	Plug 'calebeby/ncm-css'
	Plug 'Shougo/neco-vim'
    Plug 'mhartington/nvim-typescript'

	" Languages
    Plug 'othree/html5.vim'
	Plug 'fatih/vim-go'
	Plug 'leafgarland/typescript-vim'
    Plug 'ternjs/tern_for_vim', { 'for': 'javascript', 'do': 'yarn install' }
    Plug 'posva/vim-vue'

	" Git
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'

    " FML
    Plug 'wikitopian/hardmode'
call plug#end()
