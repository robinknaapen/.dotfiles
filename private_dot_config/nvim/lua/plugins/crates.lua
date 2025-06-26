return {
  'saecki/crates.nvim',
  tag = 'stable',
  opts = {
    lsp = {
      enabled = true,
      actions = true,
      completion = true,
      hover = true,
    },
    completion = {
      crates = {
        enabled = true,  -- disabled by default
        max_results = 8, -- The maximum number of search results to display
      }
    }
  }
}
