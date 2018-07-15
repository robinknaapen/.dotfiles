" <F5> Will remove highlighting
map		<silent>	<F5>	:nohl<CR>

" <d> will not set clipboard
nnoremap d "_d
vnoremap d "_d

" NCM
let g:cm_auto_popup = 0
imap <C-Space> <Plug>(ncm2_manual_trigger)
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" <Home> ignore leading whitespaces
nnoremap    <silent> <Home>     ^
vnoremap    <silent> <Home>     ^
inoremap    <silent> <Home>     <C-o>^

" csscomb on save
autocmd BufWritePre,FileWritePre *.css,*.less,*.scss,*.sass silent! :Neoformat stylefmt

" GotoDefenition TernDef
autocmd FileType javascript,typescript map <buffer> gd :TSDef<CR>

" In go user <C-x><C-o> for autocomplete
autocmd FileType go imap <C-Space> <C-x><C-o>

" Bind <C-A-p> to :GoDecls
autocmd FileType go map <C-A-p> :GoDecls<CR>
