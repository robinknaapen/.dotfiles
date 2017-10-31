" <F5> Will remove highlighting
map		<silent>	<F5>	:nohl<CR>

" <d> will not set clipboard
nnoremap d "_d
vnoremap d "_d

" NCM
let g:cm_auto_popup = 0
imap <C-Space> <Plug>(cm_force_refresh)

" <Home> ignore leading whitespaces
nnoremap    <silent> <Home>     ^
vnoremap    <silent> <Home>     ^
inoremap    <silent> <Home>     <C-o>^

" csscomb on save
autocmd BufWritePre,FileWritePre *.css,*.less,*.scss,*.sass silent! :Neoformat stylefmt
