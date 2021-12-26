vim.g.mapleader = ","

local function map(modes, lhs, rhs, opts)
	local options = {noremap = true}
	if opts then options = vim.tbl_extend('force', options, opts) end
	for _, mode in ipairs(modes) do
		vim.api.nvim_set_keymap(mode, lhs, rhs, options)
	end
end

map({'n'}      , '<C-p>' , ':Files<CR>', { silent = true })
map({'n'}      , 'gd'    , '<cmd>lua vim.lsp.buf.definition()<CR>')
map({'n', 'v'} , 'd'     , '"_d')
map({''}       , '<F5>'  , ':noh<CR>', { silent = true })
