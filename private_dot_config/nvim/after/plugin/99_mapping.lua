local telescope = require('telescope')
local builtin = require('telescope.builtin')
local ca = require("actions-preview")

local function map(modes, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then options = vim.tbl_extend('force', options, opts) end
	for _, mode in ipairs(modes) do
		vim.keymap.set(mode, lhs, rhs, options)
	end
end

-- Unbind space
map({ 'n' }, '<SPACE>', '<nop>', { noremap = true })

-- LSP Related
map({ 'n', 'v' }, 'd', '"_d')                      -- Prevent 'd' from overwriting clipboard
map({ 'v' }, 'p', 'P')                             -- Prevent 'p' from overwriting clipboard
map({ '' }, '<F5>', ':noh<CR>', { silent = true }) -- remove all hl

-- Middle when using <C-d> or <C-u>
-- map({ 'n' }, '<C-d>', '<C-d>zz')
-- map({ 'n' }, '<C-u>', '<C-u>zz')

-- Middle n and N
-- map({ 'n' }, 'n', 'nzzzv')
-- map({ 'n' }, 'N', 'Nzzzv')

-- Disable Q
map({ 'n' }, 'Q', '<nop>')
map({ 'n' }, 'q', '<nop>')

map({ 'n' }, 'gi', builtin.lsp_implementations)
map({ 'n' }, 'gr', builtin.lsp_references)
map({ 'n' }, 'gd', builtin.lsp_definitions)
map({ 'n' }, 'gt', builtin.lsp_type_definitions)
map({ 'n' }, 'gf', builtin.treesitter)
map({ 'n' }, '<leader>rn', vim.lsp.buf.rename)

map({ 'n' }, '<leader>ca', ca.code_actions)
map({ 'n' }, '<leader>cd', builtin.diagnostics)
map({ 'n' }, 'K', vim.lsp.buf.hover)

map({ 'n' }, '<leader>ff', function()
	builtin.git_files({ show_untracked = true })
end)
map({ 'n' }, '<leader>fg', builtin.live_grep)
map({ 'n' }, '<leader>ft', telescope.extensions["todo-comments"].todo)
map({ 'n' }, '<leader>fp', telescope.extensions["projects"].projects)

map({ 'n' }, '<leader>ih', function()
	vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end)
