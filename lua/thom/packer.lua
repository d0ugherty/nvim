-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- this is essential.


    use {
  	    'nvim-telescope/telescope.nvim', tag = '0.1.2',
	    -- or                            , branch = '0.1.x',
  	    requires = { {'nvim-lua/plenary.nvim'} }
    }
--use  ('rktjmp/lush.nvim')
	--Colorscheme


        --extra colorschemes
    --use('haishanh/night-owl.vim')
    --[==[use({ "miikanissi/modus-themes.nvim",
			as = 'modus',
				config = function()
					vim.cmd('colorscheme modus')
					vim.api.nvim_set_hl(0, 'Normal', { guibg=NONE, ctermbg=NONE })
				end})
-- 	--[==[use({'cseelus/vim-colors-lucid',
		as = 'lucid',
			config = function()
				vim.cmd('colorscheme lucid')
				vim.api.nvim_set_hl(0,'Normal', {guibg=NONE, ctermbg=NONE })
				end})]==]--
   --[==[ use({
		'bignimbus/pop-punk.vim',
		as = 'pop-punk',
		config = function()
			vim.cmd('colorscheme pop-punk')
			vim.api.nvim_set_hl(0, 'Normal', { guibg=NONE, ctermbg=NONE })
		end
		})[
			use({ 'metalelf0/jellybeans-nvim',
			requires = {'rktjmp/lush.nvim'},
			as = 'jellybeans-nvim',
				config = function()
					vim.cmd('colorscheme jellybeans-nvim')
					vim.api.nvim_set_hl(0,'Normal', {guibg=NONE, ctermbg=NONE})
			end})
	    --[==[use({
		 'k4yt3x/ayu-vim-darker',
		as = 'ayu',
		config = function()
			vim.cmd('colorscheme ayu')
			vim.api.nvim_set_hl(0, 'Normal', { guibg=NONE, ctermbg=NONE })
		end
		})]==]--
	use{'olimorris/onedarkpro.nvim', as = 'onedarkpro'}
	use{'bluz71/vim-nightfly-colors', as = 'nightfly'}
	use({ "miikanissi/modus-themes.nvim"})
    use('EdenEast/nightfox.nvim')
    use{'rose-pine/neovim', as = 'rose-pine' }
    use{'d0ugherty/tokyonight.nvim', as = 'tokyonight'}
	--use{'folke/tokyonight.nvim', as = 'tokyonight'}
    use('NLKNguyen/papercolor-theme')
    use('agude/vim-eldar')
    use('k4yt3x/ayu-vim-darker')
    use('jaredgorski/spacecamp')
    use('tomasiser/vim-code-dark')
    use('tpope/vim-vividchalk')
    use('gouch/vim-ballroom')
	use({'bignimbus/pop-punk.vim'})
    --discord presence (lol)
    --use('vimsence/vimsence')
    use('andweeb/presence.nvim')

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

    --auto close
    use{'m4xshen/autoclose.nvim', as = 'autoclose'}
	--lsp
	use {'neoclide/coc.nvim', branch = 'release'}
	use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
	    -- LSP Support
	    {'neovim/nvim-lspconfig'},             -- Required
	    {'williamboman/mason.nvim'},           -- Optional
	    {'williamboman/mason-lspconfig.nvim'},
	    {'python-rope/rope'}, -- Optional
		{'PyCQA/flake8'},
	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},     -- Required
	    {'hrsh7th/cmp-nvim-lsp'}, -- Required
	    {'L3MON4D3/LuaSnip'},     -- Required
	  }
	}
end)
