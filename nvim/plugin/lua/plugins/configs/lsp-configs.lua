local lsp = vim.lsp

require'lspconfig'.tsserver.setup{} -- typescript-language-server
require'lspconfig'.cssmodules_ls.setup{} -- css-modules-language-server
require'lspconfig'.dartls.setup{} -- dart-language-server
require'lspconfig'.html.setup{} -- html-language-server
require'lspconfig'.pyright.setup{} -- pyright-language-server
require'lspconfig'.dockerls.setup{} -- docker-language-server
require'lspconfig'.tailwindcss.setup{}  -- tailwind-language-server
-- require'lspconfig'.jdtls.setup{} 
require'lspconfig'.gopls.setup {
    cmd = {"gopls", "serve"},
    filetypes = {"go", "gomod"},
    root_dir = require "lspconfig/util".root_pattern("go.work", "go.mod", ".git"),
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
  }


  lsp.handlers["textDocument/hover"] = lsp.with(vim.lsp.handlers.hover, {
  border = "rounded",
})
