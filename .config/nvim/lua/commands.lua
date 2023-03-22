local function interp(s, tab)
	return (s:gsub('($%b{})', function(w) return tab[w:sub(3, -2)] or w end))
end

local function set_tabs(types, opts)
	for _, type in ipairs(types) do
		local cmd = string.format('autocmd! FileType %s', type)
		cmd = interp(
			cmd .. ' setlocal shiftwidth=${shiftwidth} tabstop=${tabstop}',
			opts
		)

		if (opts['noexpandtab']) then
			cmd = cmd .. ' noexpandtab'
		else
			cmd = cmd .. ' expandtab'
		end

		vim.api.nvim_exec(cmd, false)
	end
end

set_tabs(
	{ '*' },
	{ tabstop = 4, shiftwidth = 4, noexpandtab = true }
)

set_tabs(
	{
		'typescript', 'javascript', 'vue',
		'yaml', 'toml'
	},
	{ tabstop = 2, shiftwidth = 2 }
)
