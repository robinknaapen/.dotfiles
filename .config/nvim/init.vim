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
let g:ctrlp_regexp = 1
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:netrw_dirhistmax=0
let g:netrw_liststyle=3

" Don't truncate messages
set shortmess+=c

" Ruler
set ruler

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

" NCM
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
let g:ncm2#matcher = 'prefix'
let g:LanguageClient_serverCommands = {
	\ 'vue': ['vls'],
	\ 'cpp': ['ccls']
\ }

" vim-codefmt
call glaive#Install()
augroup autoformat_settings
	autocmd FileType c,cpp AutoFormatBuffer clang-format
augroup END
