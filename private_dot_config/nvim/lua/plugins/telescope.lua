return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
  },
  opts = {
    defaults = {
      mappings = {},
    },
    extensions = {
      "projects",
      "textcase",
      file_browser = {
        hijack_netrw = true,
        mappings = {
          ["i"] = {
            -- your custom insert mode mappings
          },
          ["n"] = {
            -- your custom normal mode mappings
          },
        },
      },
    },
  },
  cmd = {
    "Telescope",
  },
  keys = {
    {
      "<leader>ff",
      function()
        local builtin = require("telescope.builtin")
        local ok = pcall(builtin.git_files, {
          show_untracked = true,
        })
        if not ok then
          builtin.find_files({
            hidden = true,
          })
        end
      end,
      mode = { "n" },
      desc = "Telescope files",
    },
    {
      "<leader>fg",
      function()
        require("telescope.builtin").live_grep()
      end,
      mode = { "n" },
      desc = "Telescope live grep",
    },
    {
      "<leader>fh",
      function()
        require("telescope").extensions["git_signs"].git_signs({
          all = true
        })
      end,
    },
    {
      "<leader>fp",
      function()
        require("telescope").extensions["projects"].projects()
      end,
      mode = { "n" },
      desc = "Telescope project",
    },
    {
      "<leader>ft",
      function()
        require("telescope").extensions["todo-comments"].todo()
      end,
      mode = { "n" },
      desc = "Telescope todo-comments",
    },
    {
      "<leader>fd",
      function()
        require("telescope.builtin").diagnostics()
      end,
      mode = { "n" },
      desc = "Telescope diagnostics",
    },
    {
      "<leader>fb",
      function()
        require("telescope").extensions.file_browser.file_browser({
          path = vim.fn.expand("%:p:h"),
          select_buffer = true,
        })
      end,
      mode = { "n" },
      desc = "Telescrope file_browser",
    },
    {
      "gi",
      function()
        require("telescope.builtin").lsp_implementations()
      end,
      mode = { "n" },
      desc = "LSP Implementations",
    },
    {
      "gr",
      function()
        require("telescope.builtin").lsp_references()
      end,
      mode = { "n" },
      desc = "LSP References",
    },
    {
      "gd",
      function()
        require("telescope.builtin").lsp_definitions()
      end,
      mode = { "n" },
      desc = "LSP Definitions",
    },
    {
      "gt",
      function()
        require("telescope.builtin").lsp_type_definitions()
      end,
      mode = { "n" },
      desc = "LSP Type Definitions",
    },
    {
      "<leader>ca",
      function()
        require("actions-preview").code_actions()
      end,
      mode = { "n" },
      desc = "Code actions",
    },
  },
  lazy = true,
}
