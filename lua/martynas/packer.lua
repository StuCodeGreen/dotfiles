-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use { "rose-pine/neovim", as = "rose-pine" }

	use('nvim-treesitter/nvim-treesitter',{run = ':TSUpdate'})

	use('nvim-treesitter/playground')

	use('ThePrimeagen/harpoon')

	use('mbbill/undotree')

	use('tpope/vim-fugitive')

	--LSP
	use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
	use({'neovim/nvim-lspconfig'})
	use({'hrsh7th/nvim-cmp'})
	use({'hrsh7th/cmp-nvim-lsp'})
	use({'L3MON4D3/LuaSnip'}) -- Snippet engine
	use({'saadparwaiz1/cmp_luasnip'}) -- LuaSnip completion source
	use({'hrsh7th/cmp-buffer'}) -- Buffer completions
	use({'hrsh7th/cmp-path'}) -- Path completions

	--autotag
	use({'windwp/nvim-autopairs'}) -- Auto-closing brackets, quotes, etc.
	use({'windwp/nvim-ts-autotag'}) -- Auto-closing tag

end)
