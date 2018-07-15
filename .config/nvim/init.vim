" UTF-8 encoding
scriptencoding utf-8
set encoding=utf8

exe 'source' '~/.config/nvim/plug.vim'

for f in split(glob('~/.config/nvim/vimrc.d/*'), '\n')
    exe 'source' f
endfor

"""""""""""""""
" GUI
"""""""""""""""

" Prevent lag in large files
set lazyredraw

" Rainbow parentheses
let g:rainbow_active = 1

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
set number
set numberwidth=6
highlight LineNr ctermfg=darkgrey

" Syntax highlighting
syntax on
colorscheme onedark
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

" Prevent vue syntax hl from breaking
autocmd FileType vue syntax sync fromstart

" Indent spaces
set tabstop=4
set shiftwidth=4
set noexpandtab
set formatoptions+=t

" Fucking Hardmode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

vmap <C-Left> <nop>
vmap <C-Right> <nop>
vmap <C-Up> <nop>
vmap <C-Down> <nop>
map <C-Left> <nop>
map <C-Right> <nop>
map <C-Up> <nop>
map <C-Down> <nop>
imap <C-Left> <nop>
imap <C-Right> <nop>
imap <C-Up> <nop>
imap <C-Down> <nop>

" psql as default SQL accent
let g:sql_type_default = 'pgsql'

" autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.typescript.scss
