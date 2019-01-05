" <F5> Will remove highlighting
map		<silent>	<F5>	:nohl<CR>

" <d> will not set clipboard
nnoremap d "_d
vnoremap d "_d

" NCM
let g:ncm2#auto_popup = 0
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
autocmd FileType c,cpp nnoremap <buffer> gd :<c-u>call ncm2_pyclang#goto_declaration()<cr>

" In go user <C-x><C-o> for autocomplete
" autocmd FileType go imap <C-Space> <C-x><C-o>

" Bind <C-A-p> to :GoDecls
autocmd FileType go map <C-A-p> :GoDecls<CR>

" Snipmate
inoremap <silent> <expr> <CR> ncm2_snipmate#expand_or("\<CR>", 'n')

let g:snips_no_mappings = 1
vmap <c-j> <Plug>snipMateNextOrTrigger
vmap <c-k> <Plug>snipMateBack
imap <expr> <c-k> pumvisible() ? "\<c-y>\<Plug>snipMateBack" : "\<Plug>snipMateBack"
imap <expr> <c-j> pumvisible() ? "\<c-y>\<Plug>snipMateNextOrTrigger" : "\<Plug>snipMateNextOrTrigger"
