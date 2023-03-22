local _, colors, Group, _, _, no = require('colorbuddy').setup()

require("noirbuddy").setup({
	preset = 'kiwi',
})

Group.new('Normal', colors.main_font, colors.none, no)
Group.new('LineNr', colors.main_font, colors.none, no)
Group.new('SignColumn', colors.main_font, colors.none, no)
Group.new('@comment', colors.noir_6)
