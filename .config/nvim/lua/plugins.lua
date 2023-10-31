-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        -- languages
        use 'neovim/nvim-lspconfig'
        use {'neoclide/coc.nvim', branch = 'release'}
        use {
                'mrcjkb/haskell-tools.nvim',
                requires = {
                        'nvim-lua/plenary.nvim',
                        'nvim-telescope/telescope.nvim', -- optional
                },
                branch = '1.x.x', -- recommended
        }
        use 'rust-lang/rust'
        use 'bfrg/vim-cpp-modern'
        use 'tikhomirov/vim-glsl'
        use 'preservim/vim-markdown'

        -- styling
        use 'sainnhe/gruvbox-material'
        use 'vim-airline/vim-airline'
        use 'vim-airline/vim-airline-themes'

        -- others
        use {
                'nvim-treesitter/nvim-treesitter',
                run = function()
                        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
                        ts_update()
                end,
        }
        use 'preservim/nerdtree'
        use {"akinsho/toggleterm.nvim", tag = '*', config = function()
                require("toggleterm").setup()
        end}
        use "nvim-lua/plenary.nvim"
        use {
                requires = { {'nvim-lua/plenary.nvim'} }
        }
end)
