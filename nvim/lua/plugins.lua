local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
  use {
    'wbthomason/packer.nvim',
    'neovim/nvim-lspconfig',
    'sainnhe/everforest',

    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',  

    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',

    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',

    'nvim-tree/nvim-web-devicons',
    'lewis6991/gitsigns.nvim',

    'stevearc/oil.nvim',
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
