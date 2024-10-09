local lsp = require('lspconfig')

lsp.pyright.setup { }
lsp.ts_ls.setup { }

require('mason').setup { }

require("nvim-tree").setup {
  view = {
    side = "right"
  }
}
