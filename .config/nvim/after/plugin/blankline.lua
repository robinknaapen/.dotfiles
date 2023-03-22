vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

-- vim.opt.termguicolors = true
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=none gui=nocombine]]

-- vim.cmd [[highlight IndentBlanklineContextStart guisp=#545353 gui=underline]]
-- vim.cmd [[highlight IndentBlanklineContextChar guifg=#545353 gui=none]]

-- require("indent_blankline").setup {
-- 	show_current_context = true,
-- 	show_current_context_start = true,

-- 	char_highlight_list = {
-- 		"IndentBlanklineIndent1",
-- 	},
-- 	space_char_highlight_list = {
-- 		"IndentBlanklineIndent1",
-- 	},

-- 	show_trailing_blankline_indent = false,
-- }
