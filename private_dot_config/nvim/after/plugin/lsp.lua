vim.lsp.config.crates = {}

vim.lsp.config.gopls = {
  settings = {
    gopls = {
      analyses = {
        shadow = true,
      },
      staticcheck = true,
      gofumpt = true,
      usePlaceholders = true,
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        constantValues = true,
        parameterNames = true,
        rangeVariableTypes = true,
        functionTypeParameters = true,
      },
    },
  },
}

vim.lsp.config.vue_ls = {
  init_options = {
    vue = {
      hybridMode = false
    },
  },
  settings = {
    typescript = {
      inlayHints = {
        enumMemberValues = {
          enabled = true,
        },
        functionLikeReturnTypes = {
          enabled = true,
        },
        propertyDeclarationTypes = {
          enabled = true,
        },
        parameterTypes = {
          enabled = true,
          suppressWhenArgumentMatchesName = true,
        },
        variableTypes = {
          enabled = true,
        },
      },
    },
  },
}
