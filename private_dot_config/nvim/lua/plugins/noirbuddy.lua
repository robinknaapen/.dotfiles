-- background = "#121212",
-- black = "#000000",
-- diagnostic_error = "#ff0038",
-- diagnostic_hint = "#47eae0",
-- diagnostic_info = "#47eae0",
-- diagnostic_warning = "#ff7700",
-- diff_add = "#00ff77",
-- diff_change = "#47eae0",
-- diff_delete = "#ff0038",
-- gray0 = "#111111",
-- gray1 = "#282a2e",
-- gray2 = "#373b41",
-- gray3 = "#969896",
-- gray4 = "#b4b7b4",
-- gray5 = "#c5c8c6",
-- gray6 = "#e0e0e0",
-- gray7 = "#ffffff",
-- noir_0 = "#ffffff",
-- noir_1 = "#f5f5f5",
-- noir_2 = "#d5d5d5",
-- noir_3 = "#b4b4b4",
-- noir_4 = "#a7a7a7",
-- noir_5 = "#949494",
-- noir_6 = "#737373",
-- noir_7 = "#535353",
-- noir_8 = "#323232",
-- noir_9 = "#212121",
-- none = "none",
-- primary = "#ff5ccd",
-- secondary = "#d5d5d5",
-- white = "#ffffff"

return {
	"jesseleite/nvim-noirbuddy",
	dependencies = {
		"tjdevries/colorbuddy.nvim",
	},
	config = function()
		require('noirbuddy').setup({
			colors = {
				primary = '#ff5ccd',
			},
		})

		local colorbuddy = require('colorbuddy')
		local colors = colorbuddy.colors
		local group = colorbuddy.Group
		local styles = colorbuddy.styles

		group.new('LazyNormal', nil, colors.background)
		group.new('Normal', nil, colors.none)
		group.new('LineNr', nil, colors.none)
		group.new('SignColumn', nil, colors.none)
		group.new('@comment', colors.noir_7, nil)
		group.new('LspInlayHint', colors.noir_7, nil, styles.italic)
	end
}
