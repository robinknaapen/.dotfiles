vim.g.mapleader = ","

local function map(modes, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then options = vim.tbl_extend('force', options, opts) end
    for _, mode in ipairs(modes) do
        vim.api.nvim_set_keymap(mode, lhs, rhs, options)
    end
end

map({ 'n' }, '<C-p>', ':Files<CR>', { silent = true })

-- LSP Related
map({ 'n' }, 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
map({ 'n' }, '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')

map({ 'n', 'v' }, 'd', '"_d') -- Prevent 'd' from overwriting clipboard
map({ '' }, '<F5>', ':noh<CR>', { silent = true }) -- remove all hl

-- Move code in visual blocks
map({ 'v' }, 'J', ":m '>+1<CR>gv=gv")
map({ 'v' }, 'K', ":m '<-2<CR>gv=gv")

-- Middle when using <C-d> or <C-u>
map({ 'n' }, '<C-d>', '<C-d>zz')
map({ 'n' }, '<C-u>', '<C-u>zz')

-- Middle n and N
map({ 'n' }, 'n', 'nzzzv')
map({ 'n' }, 'N', 'Nzzzv')

-- Disable Q
map({ 'n' }, 'Q', '<nop>')

vim.cmd("set mouse=")
