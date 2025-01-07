return {
	'kkrime/project.nvim',
	name = "project_nvim",
	branch = 'corner_case_embedded_projects',
	opts = {
		manual_mode = false,
		detection_methods = { "lsp", "pattern" },
		patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "init.lua" },
	}
}
