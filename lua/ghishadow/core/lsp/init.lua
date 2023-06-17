local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "ghishadow.core.lsp.lsp-installer"
require("ghishadow.core.lsp.handlers").setup()
require "ghishadow.core.lsp.null-ls"
