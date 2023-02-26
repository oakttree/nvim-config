local opts = { noremap=true, silent=true }
local bufopts = { noremap=true, silent=true, buffer=bufnr }
vim.keymap.set('n', '<space>b', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)

--needs nodejs for some reason
require ("mason").setup()
require ("mason-lspconfig").setup {
  ensure_installed = { 
    "pyright",
    "lua_ls",
    "html", "cssls", 
    "clangd", "jdtls", 
    "tsserver", "intelephense" 
  }
}

require("lspconfig").lua_ls.setup {}
require("lspconfig").pyright.setup {}
require ("lspconfig").html.setup {}

