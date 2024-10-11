return {{
    "neovim/nvim-lspconfig",
    config = function()
        require("lspconfig").pyright.setup()
        require("lspconfig").lsp.ts_ls.setup()
    end
}, {
    "williamboman/mason.nvim",
    config = function()
        require('mason').setup()
    end
}, {
    'williamboman/mason-lspconfig.nvim',
    config = function()
        require('mason-lspconfig').setup({
            ensure_installed = {'pyright', 'dockerls', 'yamlls', 'ts_ls', 'rust_analyzer', 'tailwindcss', 'omnisharp',
                                'ansiblels', 'lua_ls'}
        })
    end
}, {
    'hrsh7th/nvim-cmp',
    config = function()
        require('cmp').setup {
            sources = {{
                name = 'nvim_lsp'
            }}
        }
    end
}, {'hrsh7th/cmp-nvim-lsp'}}
