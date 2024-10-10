local lsp = require('lspconfig')

lsp.pyright.setup { }
lsp.ts_ls.setup { }

require('mason').setup { }
require('mason-lspconfig').setup {
  ensure_installed = {
    'pyright',
    'dockerls',
    'yamlls',
    'ts_ls',
    'rust_analyzer',
    'tailwindcss',
    'omnisharp',
    'ansiblels',
    'lua_ls',
  }
}

require('cmp').setup { 
  sources = { {
    name = 'nvim_lsp'
  } }
}

require('oil').setup {
  view_options = {
    is_hidden_file = function(name, _)
      return name == '__pycache__' or name == '.DS_Store'
    end,
  },
}
