local lsp = require('lspconfig')

lsp.pyright.setup { }
lsp.ts_ls.setup { }

local mason = require('mason')
mason.setup { }
