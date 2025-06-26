return {
  'hrsh7th/nvim-cmp',
  lazy = false,
  dependencies = {
    'xzbdmw/colorful-menu.nvim',

    'neovim/nvim-lspconfig',

    "folke/noice.nvim",
    'onsails/lspkind.nvim',

    "hrsh7th/cmp-cmdline",
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',

    {
      "zbirenbaum/copilot-cmp",
      main = "copilot_cmp",
      opts = {},
      dependencies = {
        "zbirenbaum/copilot.lua",
      }
    },
  },
  event = "InsertEnter",
  config = function()
    local cmp = require('cmp')
    local lspkind = require('lspkind')
    local colorful = require("colorful-menu")

    -- Add capabilities of cmp_nvim_lsp to lsp_config
    local lspconfig = require('lspconfig')
    lspconfig.util.default_config = vim.tbl_deep_extend("force", lspconfig.util.default_config, {
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
    })

    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' },
        { name = 'cmdline' }
      })
    })

    cmp.setup({
      sources = {
        { name = "copilot" },
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'path' },
      },

      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },

      preselect = 'none',
      completion = {
        completeopt = table.concat(vim.opt.completeopt:get(), ","),
        autocomplete = false,
      },

      formatting = {
        format = function(entry, vim_item)
          local highlights_info = colorful.cmp_highlights(entry)

          if highlights_info ~= nil then
            vim_item.abbr_hl_group = highlights_info.highlights
            vim_item.abbr = highlights_info.text
          end

          local cmp_format_opts = {
            mode = 'symbol',
            show_labelDetails = true,
            symbol_map = {
              Copilot = "",
              Text = "󰉿",
              Method = "󰆧",
              Function = "󰊕",
              Constructor = "",
              Field = "󰜢",
              Variable = "󰀫",
              Class = "󰠱",
              Interface = "",
              Module = "",
              Property = "󰜢",
              Unit = "󰑭",
              Value = "󰎠",
              Enum = "",
              Keyword = "󰌋",
              Snippet = "",
              Color = "󰏘",
              File = "󰈙",
              Reference = "󰈇",
              Folder = "󰉋",
              EnumMember = "",
              Constant = "󰏿",
              Struct = "󰙅",
              Event = "",
              Operator = "󰆕",
              TypeParameter = "",
            },
          }

          return lspkind.cmp_format(cmp_format_opts)(entry, vim_item)
        end,
      },
      --
      mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),

        ['<CR>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.confirm({
              select = true,
            })
          else
            fallback()
          end
        end),

        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          else
            fallback()
          end
        end, { "i", "s", "c" }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          else
            fallback()
          end
        end, { "i", "s", "c" }),
      }),

      experimental = {
        ghost_text = true,
      },
    })
  end,
}
