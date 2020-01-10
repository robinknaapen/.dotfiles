let g:go_code_completion_enabled = 0
let g:go_def_mapping_enabled = 0
let g:go_fmt_command = 'goimports'

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_generate_tags = 1

let g:go_metalinter_autosave = 1
let g:go_echo_command_info = 0
let g:go_jump_to_error = 0

let g:go_list_type = 'locationlist'

au BufNewFile,BufRead *.gohtml setf gohtmltmpl

" Bind <C-c><C-t> To GoCoverageToggle
autocmd FileType go map <C-c><C-t> :GoCoverageToggle<CR>
