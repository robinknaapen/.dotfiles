return {
	'kkrime/project.nvim',
	name = "project_nvim",
	branch = 'workspace_folders',
	opts = {
		manual_mode = false,
		detection_methods = { "lsp", "pattern" },
		patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "init.lua" },
	}
}
