return {
  lsp = {
    setup_handlers = {
      -- add custom handler
      tsserver = function(_, opts) require("typescript").setup { server = opts } end,
      rust_analyzer = function(_, opts) require("rust-tools").setup { server = opts } end,
    }
  },
  plugins = {
    "jose-elias-alvarez/typescript.nvim", -- add lsp plugin
    "simrat39/rust-tools.nvim",
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = { "rust_analyzer, tsserver" }, -- automatically install lsp
      },
    },
  },
}
