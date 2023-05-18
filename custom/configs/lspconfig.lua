local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.bashls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.vimls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.marksman.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.lua_ls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.jdtls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.gopls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.pyright.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.html.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.cssls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.denols.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.tsserver.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.clangd.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.dockerls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
lspconfig.rust_analyzer.setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    ["rust-analyzer"] = {}
  }
})
