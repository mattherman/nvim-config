return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'gpanders/editorconfig.nvim'
    use {
        'nvim-telescope/telescope.nvim',
	requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'vim-airline/vim-airline'
    use 'morhetz/gruvbox'
    use 'neovim/nvim-lspconfig'
end)
