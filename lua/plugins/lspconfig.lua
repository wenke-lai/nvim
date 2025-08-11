return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "b0o/schemastore.nvim", -- JSON schemas
  },
  config = function()
    -- Setup mason and mason-lspconfig
    require("mason").setup()
    require("mason-lspconfig").setup({
      -- Ensure these servers are installed
      ensure_installed = {
        "pyright",      -- Python LSP
        "svelte",       -- Svelte LSP
        "jsonls",       -- JSON LSP
      },
    })
  end,
}