return require('packer').startup(
  function(use)
    use 'tpope/vim-commentary'
    use 'tpope/vim-surround'
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
  end
)
