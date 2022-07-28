-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

-- Packer can manage itself
use 'wbthomason/packer.nvim'

-- lspconfig
use 'neovim/nvim-lspconfig'

-- Colorscheme
use 'artanikin/vim-synthwave84'

-- telescope
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { 
	  {'nvim-lua/plenary.nvim'},
	  {'BurntSushi/ripgrep'},
	  {'sharkdp/fd'},
	  {'nvim-treesitter/nvim-treesitter'},
	  {'kyazdani42/nvim-web-devicons'}
  }
}

-- diagnostic messages
use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

use {
	'VonHeikemen/lsp-zero.nvim',
	requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},
		{'williamboman/nvim-lsp-installer'},
		-- Autocompletion
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-buffer'},
		{'hrsh7th/cmp-path'},
		{'saadparwaiz1/cmp_luasnip'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/cmp-nvim-lua'},

		-- Snippets
		{'L3MON4D3/LuaSnip'},
		{'rafamadriz/friendly-snippets'},
	}
}

end)
