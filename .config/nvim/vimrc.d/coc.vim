" set completefunc=LanguageClient#complete
" set hidden

" " let g:LanguageClient_hoverPreview = 0
" let g:LanguageClient_autoStart = 1
" let g:LanguageClient_diagnosticsEnable = 0
" let g:LanguageClient_serverCommands = {
" 	\ 'vue': ['vls'],
" 	\ 'cpp': ['ccls'],
" 	\ 'rust': ['rustup', 'run', 'nightly', 'rls'],
" 	\ 'go': ['gopls'],
" \ }

" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>

" inoremap <c-Space> <c-x><c-o>
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

autocmd FileType json syntax match Comment +\/\/.\+$+

set hidden
set cmdheight=2

set signcolumn=yes

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>rn <Plug>(coc-rename)

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
set completeopt+=menuone,noinsert,noselect
