return {
  "nvimtools/none-ls.nvim",
  dependencies = { "mason.nvim" },
  opts = function()
    local null_ls = require("null-ls")

    return {
      sources = {
        null_ls.builtins.code_actions.gitsigns
      }
    }
  end
}
