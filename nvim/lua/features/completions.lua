return {{
    "neovim/nvim-lspconfig",
    config = function()
        require("lspconfig").pyright.setup({})
        require("lspconfig").ts_ls.setup({})
    end,
    keys = {
        { '<leader>ff', '<cmd>Telescope find_files<cr>' },
        { '<leader>fg', '<cmd>Telescope live_grep<cr>' },
        { '<leader>fb', '<cmd>Telescope buffers<cr>' },
        { '<leader>fh', '<cmd>Telescope help_tags<cr>' },
      },
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
