return {
	"zbirenbaum/copilot.lua",
	opts = {
		filetypes = {
			markdown = true,
			sh = function()
				if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), '^%.env.*') then
					return false
				end
				return true
			end,
		},
		suggestion = {
			enabled = false,
		},
		panel = { enabled = true },
	}
}
