" <F5> Will remove highlighting
map		<silent>	<F5>	:nohl<CR>

" <d> will not set clipboard
nnoremap d "_d
vnoremap d "_d

" <Home> ignore leading whitespaces
nnoremap    <silent> <Home>     ^
vnoremap    <silent> <Home>     ^
inoremap    <silent> <Home>     <C-o>^
