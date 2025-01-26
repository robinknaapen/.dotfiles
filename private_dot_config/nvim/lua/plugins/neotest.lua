return {
	"nvim-neotest/neotest",

	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",

		-- adapters
		"fredrikaverpil/neotest-golang",
	},

	config = function()
		local neotest_golang_opts = { -- Specify configuration
			runner = "go",
			colorize_test_output = false,
			go_test_args = {
				"-v",
				"--race",
				"--count=1",
			},
		}

		require("neotest").setup({
			status = { virtual_text = true },
			output = { enabled = false },
			quickfix = {
				enabled = false
			},
			adapters = {
				require("neotest-golang")(neotest_golang_opts), -- Registration
			},
		})
	end,
	keys = {
		{ "<leader>t",  "",                                                                                 desc = "+test" },
		{ "<leader>tr", function() require("neotest").run.run() end,                                        desc = "Run Nearest (Neotest)" },
		{ "<leader>tt", function() require("neotest").run.run(vim.fn.expand("%")) end,                      desc = "Run File (Neotest)" },
		{ "<leader>tT", function() require("neotest").run.run(vim.fn.expand("%:h")) end,                    desc = "Run All Test Files (Neotest)" },
		{ "<leader>tl", function() require("neotest").run.run_last() end,                                   desc = "Run Last (Neotest)" },
		{ "<leader>ts", function() require("neotest").summary.toggle() end,                                 desc = "Toggle Summary (Neotest)" },
		{ "<leader>to", function() require("neotest").output.open({ enter = true, auto_close = true }) end, desc = "Show Output (Neotest)" },
		{ "<leader>tO", function() require("neotest").output_panel.toggle() end,                            desc = "Toggle Output Panel (Neotest)" },
		{ "<leader>tS", function() require("neotest").run.stop() end,                                       desc = "Stop (Neotest)" },
		{ "<leader>tw", function() require("neotest").watch.toggle(vim.fn.expand("%")) end,                 desc = "Toggle Watch (Neotest)" },
	},
}
