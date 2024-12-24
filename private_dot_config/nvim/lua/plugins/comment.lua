return {
	'numToStr/Comment.nvim',
	dependencies = {
		'JoosepAlviste/nvim-ts-context-commentstring'
	},
	opts = function()
		local context = require('ts_context_commentstring.integrations.comment_nvim')
		return {
			pre_hook = context.create_pre_hook(),
		}
	end,
	keys = {
		"gc",
		"gcc",
	},
}
