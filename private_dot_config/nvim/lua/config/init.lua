vim.g.mapleader = " "

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

-- if set, when we switch between buffers, it will not split more than once. It will switch to the existing buffer instead
vim.opt.switchbuf = 'useopen'

vim.opt.clipboard = 'unnamedplus'

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.cmdheight = 2
vim.opt.mouse = ''

vim.opt.completeopt = { "menu", "menuone", "noinsert", "noselect" }
vim.diagnostic.config({
	virtual_lines = { current_line = true },
	virtual_text = false,
	update_in_insert = true,
})

vim.filetype.add({
	pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.shiftround = true
