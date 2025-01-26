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
vim.diagnostic.config({ virtual_lines = { only_current_line = true }, virtual_text = false })

vim.filetype.add({
	pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

-- vim.opt.scrolloff = 999
-- vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
--   desc = "Center cursor",
--   group = vim.api.nvim_create_augroup("CenterCursor", { clear = true }),
--   callback = function()
--     local mode = vim.fn.mode(1)
--     if mode == "i" then
--       return
--     end
--     vim.cmd "normal! zz"
--   end,
-- })
