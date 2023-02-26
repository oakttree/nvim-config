
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'

   --icons
  use 'ryanoasis/vim-devicons'

   --colorschemes
  use 'voithos/vim-colorpack'
  use 'xiyaowong/nvim-transparent' -- transparent background
   require("transparent").setup({
         enable = true
       })

   --treesitter
  use 'nvim-treesitter/nvim-treesitter'
 
   --completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'saadparwaiz1/cmp_luasnip'
 
   --snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
 
   --comp and LSP
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
 
   --LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
   
   --fuzzyfinder
  use {
     'nvim-telescope/telescope.nvim', tag = '0.1.1',
     requires = { {'nvim-lua/plenary.nvim'} }
   }
   
   --nvim-tree 
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
 
   --undotree
  use 'mbbill/undotree'
  vim.keymap.set ("n", "<leader>u", ":UndotreeToggle<CR>")
 
   --autopairs
  use {
     "windwp/nvim-autopairs",
       config = function() require("nvim-autopairs").setup {} end
   }

   --statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
    require('lualine').setup {
    options = { theme  = 'everforest' },
  }

  --tabline
  use({
    'noib3/nvim-cokeline',
    requires = 'kyazdani42/nvim-web-devicons', -- If you want devicons
    config = function()
      require('cokeline').setup()
    end
  })

  --fugitive (git)
  use 'tpope/vim-fugitive'
  vim.keymap.set("n", "<leader>gt", vim.cmd.Git)

  --startup
  use 'goolord/alpha-nvim'

end)
