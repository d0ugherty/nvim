-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'
 
    use {
  	    'nvim-telescope/telescope.nvim', tag = '0.1.2',
	    -- or                            , branch = '0.1.x',
  	    requires = { {'nvim-lua/plenary.nvim'} }
    }
	--Colorscheme
    	use({
        	'catppuccin/nvim',
        	as = 'catppuccin',
        	config = function()
            	vim.cmd('colorscheme catppuccin-mocha')
        end
    })

        --extra colorschemes
    use('EdenEast/nightfox.nvim')
    use{'catppuccin/nvim', as =  'catppuccin' }
    use('folke/tokyonight.nvim')
    use('NLKNguyen/papercolor-theme')
--    use('d0ugherty/jellybeans.vim')
    use('k4yt3x/ayu-vim-darker')
    use('jaredgorski/spacecamp')
    use('tomasiser/vim-code-dark')
    use('tpope/vim-vividchalk')
    use('gouch/vim-ballroom')

    --discord presence (lol)
    use('vimsence/vimsence')
	
    --Treesitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')

    --file tree
    use('nvim-tree/nvim-tree.lua')
    use('nvim-tree/nvim-web-devicons')

	--etc
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	--lualine
	use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
    --formatting
    use('google/vim-maktaba')
    use('google/vim-codefmt')
    use('google/vim-glaive')
    use('sbdchd/neoformat')
	--lsp
	use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
	    -- LSP Support
	    {'neovim/nvim-lspconfig'},             -- Required
	    {'williamboman/mason.nvim'},           -- Optional
	    {'williamboman/mason-lspconfig.nvim'}, -- Optional

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},     -- Required
	    {'hrsh7th/cmp-nvim-lsp'}, -- Required
	    {'L3MON4D3/LuaSnip'},     -- Required
	  }
	}
end)
