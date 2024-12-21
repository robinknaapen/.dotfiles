local function map(modes, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then options = vim.tbl_extend('force', options, opts) end
	for _, mode in ipairs(modes) do
		vim.keymap.set(mode, lhs, rhs, options)
	end
end

map({ 'n' }, '<SPACE>', '<nop>', { noremap = true })
map({ 'n', 'v' }, 'd', '"_d')                      -- Prevent 'd' from overwriting clipboard
map({ 'v' }, 'p', 'P')                             -- Prevent 'p' from overwriting clipboard
map({ '' }, '<F5>', ':noh<CR>', { silent = true }) -- remove all hl
map({ 'n' }, 'Q', '<nop>')
map({ 'n' }, 'q', '<nop>')
