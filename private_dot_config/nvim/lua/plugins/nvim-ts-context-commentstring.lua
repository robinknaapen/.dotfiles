return {
	'JoosepAlviste/nvim-ts-context-commentstring',
	config = function()
		local commentstring = require('ts_context_commentstring')
		commentstring.setup {
			enable_autocmd = false,
		}

		local internal = require("ts_context_commentstring.internal")
		local fallback_get_option = vim.filetype.get_option

		vim.filetype.get_option = function(filetype, option)
			return option == "commentstring"
					and internal.calculate_commentstring()
					or fallback_get_option(filetype, option)
		end
	end,
	lazy = false
}
