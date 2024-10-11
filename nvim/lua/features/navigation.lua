return {{
    'nvim-telescope/telescope.nvim',
    dependencies = {'nvim-lua/plenary.nvim'}
}, {
    'ggandor/leap.nvim',
    depedependencies = {'tpope/vim-repeat'},
    config = function()
        require('leap').create_default_mappings()

    end
}}
