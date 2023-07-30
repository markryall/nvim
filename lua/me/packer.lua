return require('packer').startup(
  function(use)
    use 'tpope/vim-commentary'
    use 'wbthomason/packer.nvim'
    use 'nathanaelkane/vim-indent-guides'
    use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.2',
      requires = { 'nvim-lua/plenary.nvim' }
    }
    use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
      end
    }
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use({
      'rose-pine/neovim',
      as = 'rose-pine',
      config = function()
        vim.cmd('colorscheme rose-pine')
      end
    })
    use 'folke/zen-mode.nvim'
    use({
		  'kyazdani42/nvim-tree.lua',
		  requires = { 'kyazdani42/nvim-web-devicons' },
	  })
  end
)
