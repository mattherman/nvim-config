return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'gpanders/editorconfig.nvim'
    use {
        'nvim-telescope/telescope.nvim',
	requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'vim-airline/vim-airline'
    use 'ribru17/bamboo.nvim'
    use 'neovim/nvim-lspconfig'
    use 'nvim-tree/nvim-tree.lua'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
end)
