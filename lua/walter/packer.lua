-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

require('pckr'){
    -- Packer is no longer supported, use pckr
    'wbthomason/packer.nvim';

    -- fuzzy file finder
    {
        'nvim-telescope/telescope.nvim',
        requires = 'nvim-lua/plenary.nvim'
    };
   
    -- color scheme
    -- Using Packer
    'navarasu/onedark.nvim';
    'ThePrimeagen/harpoon';
    'nvim-lua/plenary.nvim';

    --lsp plugins lsp-zero
    {
        'VonHeikemen/lsp-zero.nvim',
        --branch = 'v1.x',
        requires = {
            -- LSP Support
            'neovim/nvim-lspconfig',             -- Required
            'williamboman/mason.nvim',           -- Optional
            'williamboman/mason-lspconfig.nvim', -- Optional

            -- Autocompletion
            'hrsh7th/nvim-cmp',         -- Required
            'hrsh7th/cmp-nvim-lsp',     -- Required
            'hrsh7th/cmp-buffer',       -- Optional
            'hrsh7th/cmp-path',         -- Optional
            'saadparwaiz1/cmp_luasnip', -- Optional
            'hrsh7th/cmp-nvim-lua',     -- Optional

            -- Snippets
            'L3MON4D3/LuaSnip',             -- Required
            'rafamadriz/friendly-snippets', -- Optional
        }

    };

    --devicons
    'nvim-tree/nvim-web-devicons';
    {
        'nvim-tree/nvim-tree.lua',
        requires = 
            'nvim-tree/nvim-web-devicons', -- optional
    };
    -- display all the errors and quick fixes nicely
    {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    };
    {
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    };
}
