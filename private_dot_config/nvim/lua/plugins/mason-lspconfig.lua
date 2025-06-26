return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "mason-org/mason.nvim",
    'saecki/crates.nvim',
  },
  keys = {
    {
      "\\",
      function()
        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
      end,
      mode = { "n" },
      desc = "Toggle inlayhints",
    },
    {
      "<leader>rn",
      vim.lsp.buf.rename,
      mode = { "n" },
      desc = "Rename",
    },
  },
  opts = {
    automatic_enable = true,
    ensure_installed = {
      "lua_ls",
      "jsonls",
      "yamlls",
      "gopls",
      "rust_analyzer",
      "vue_ls",
      "ts_ls",
      "gopls",
    },
  },
  lazy = false,
}
