local lsp = require('lspconfig')

lsp.pyright.setup { }
lsp.ts_ls.setup { }

require('mason').setup { }
require('mason-lspconfig').setup {
  ensure_installed = { 'pyright' }
}

require('cmp').setup { 
  sources = {{name = 'nvim_lsp'}}
}

require('oil').setup { }
