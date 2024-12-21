local function map(modes, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then options = vim.tbl_extend('force', options, opts) end
	for _, mode in ipairs(modes) do
		vim.keymap.set(mode, lhs, rhs, options)
	end
end

vim.g.mapleader = " "

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

vim.opt.clipboard = 'unnamedplus'
vim.opt.relativenumber = true
vim.opt.cmdheight = 2
vim.opt.mouse = ''
vim.opt.scrolloff = 999

vim.opt.completeopt = { "menu", "menuone", "noinsert", "noselect" }
vim.diagnostic.config({ virtual_lines = { only_current_line = true } })

map({ 'n' }, '<SPACE>', '<nop>', { noremap = true })
map({ 'n', 'v' }, 'd', '"_d')                      -- Prevent 'd' from overwriting clipboard
map({ 'v' }, 'p', 'P')                             -- Prevent 'p' from overwriting clipboard
map({ '' }, '<F5>', ':noh<CR>', { silent = true }) -- remove all hl
map({ 'n' }, 'Q', '<nop>')
map({ 'n' }, 'q', '<nop>')

require('config.lazy')
require('commands')
