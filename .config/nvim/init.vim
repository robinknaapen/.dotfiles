" No code execution for you
set nomodeline

" UTF-8 encoding
scriptencoding utf-8
set encoding=utf8

exe 'source' '~/.config/nvim/plug.vim'

for f in split(glob('~/.config/nvim/vimrc.d/*.vim'), '\n')
    exe 'source' f
endfor

"""""""""""""""
" GUI
"""""""""""""""

" Prevent lag in large files
set lazyredraw

" Rainbow parentheses
" let g:rainbow_active = 1

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

" Hairline
set tw=79

" Line numbers
set number relativenumber
set numberwidth=3
highlight LineNr ctermfg=darkgrey

" Syntax highlighting
syntax on
" colorscheme onedark
" colorscheme challenger_deep
" colorscheme nord
" colorscheme allomancer
" colorscheme plain
" colorscheme monotone
colorscheme photon

hi goFunction ctermbg=bg ctermfg=251 cterm=bold guibg=bg guifg=#c6c6c6 gui=NONE

function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


" let g:sierra_Twilight = 1
" colorscheme sierra
highlight ColorColumn guibg=Black

" Make background transparent
set termguicolors
hi! Normal ctermbg=NONE guibg=NONE
hi! LineNr ctermbg=NONE guibg=NONE

" Indent
set tabstop=4 
set shiftwidth=4 
set noexpandtab

" ctrlp
let g:ctrlp_regexp = 1
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:netrw_dirhistmax=0
let g:netrw_liststyle=3

" Don't truncate messages
set shortmess+=c

" Ruler
set ruler
set cursorline

" Show filename
set laststatus=2

"""""""""""""""
" Useability
"""""""""""""""

" Disable commandline history
set shada=":0"

" Show matching brace
set showmatch

" Prevent vue syntax hl from breaking
autocmd BufEnter *.vue set filetype=vue
autocmd FileType vue syntax sync fromstart

" Indent spaces
set tabstop=4
set shiftwidth=4
set noexpandtab
set formatoptions+=t

" psql as default SQL accent
let g:sql_type_default = 'pgsql'

" inactivedim
let g:diminactive_use_colorcolumn = 0
let g:diminactive_use_syntax = 1

"Updatetime to foce gitgutter to update faster
set updatetime=100
