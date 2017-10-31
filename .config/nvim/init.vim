" UTF-8 encoding
scriptencoding utf-8
set encoding=utf8

call plug#begin('~/.local/share/nvim/plugged')
	" UI
	Plug 'joshdick/onedark.vim'

	" Formater
	Plug 'sbdchd/neoformat'

	" Helpers
	Plug 'kien/ctrlp.vim'
	Plug 'tpope/vim-commentary'

	" NCM
	Plug 'roxma/nvim-completion-manager'
	Plug 'roxma/nvim-cm-tern',  {'do': 'yarn install'}
	Plug 'calebeby/ncm-css'
	Plug 'Shougo/neco-vim'

	" Languages
	Plug 'fatih/vim-go'

	" Git
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
call plug#end()

for f in split(glob('~/.config/nvim/vimrc.d/*'), '\n')
    exe 'source' f
endfor

"""""""""""""""
" GUI
"""""""""""""""
" Disable auto newlines
set wrap
set textwidth=0
set wrapmargin=0
set formatoptions=l

" Backspace work everywhere
set backspace=start,eol,indent

" Show indents and trailing whitespace
set list listchars=trail:·,tab:»\ ,eol:¬

" Preview replacement
set inccommand=split

" Clipboard
set clipboard=unnamedplus

" Mouse
set mouse=a

" Line numbers
set relativenumber
set number
set numberwidth=6
set cursorline
highlight LineNr ctermfg=darkgrey

" Syntax highlighting
syntax on
colorscheme onedark

" Make background transparent
set termguicolors
hi! Normal ctermbg=NONE guibg=NONE

" Indent
set tabstop=4 
set shiftwidth=4 
set noexpandtab

" ctrlp
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:netrw_dirhistmax=0
let g:netrw_liststyle=3

" Don't truncate messages
set shortmess+=c

" Ruler
set ruler

" Remove laststatus
set laststatus=0

"""""""""""""""
" Useability
"""""""""""""""

" Disable commandline history
set shada=":0"

" Show matching brace
set showmatch
