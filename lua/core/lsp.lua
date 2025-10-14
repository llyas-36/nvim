-- Enable Mason and Mason LSP bridge
require("mason").setup()
require("mason-lspconfig").setup()

-- Use the new Neovim 0.11+ LSP API
vim.lsp.config.pyright = {
  -- You can add settings here if needed
}
vim.lsp.enable("pyright")
