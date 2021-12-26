local function interp(s, tab)
  return (s:gsub('($%b{})', function(w) return tab[w:sub(3, -2)] or w end))
end

local function set_tabs(types, opts)
	for _, type in ipairs(types) do
		local cmd = string.format("autocmd! FileType %s", type)
		local cmd = interp(
			cmd .. " setlocal shiftwidth=${shiftwidth} tabstop=${tabstop} expandtab",
			opts
		)

		vim.api.nvim_exec(cmd, false)
	end
end

set_tabs({'*'}, {tabstop = 4, shiftwidth = 4})
set_tabs({'typescript', 'javascript', 'vue'}, {tabstop = 2, shiftwidth = 2})

vim.cmd('au BufWritePre * lua vim.lsp.buf.formatting_sync()', false)
