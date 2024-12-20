require("noirbuddy").setup {
	colors = {
		primary = '#ff5ccd',
	}
}

local colorbuddy = require('colorbuddy')

local colors = colorbuddy.colors
local Group = colorbuddy.Group

Group.new('Normal', colors.main_font, colors.none)
Group.new('LineNr', colors.main_font, colors.none)
Group.new('SignColumn', colors.main_font, colors.none)
Group.new('@comment', colors.noir_6)
vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#525150" })

-- vim.cmd [[colorscheme zenbones]]
-- vim.cmd 'colorscheme monochrome'
