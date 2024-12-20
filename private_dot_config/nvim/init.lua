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

require('plugins')
require('commands')
