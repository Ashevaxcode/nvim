-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'navarasu/onedark.nvim'
  -- Lualine
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {'nvim-tree/nvim-tree.lua'}
  use {'nvim-tree/nvim-web-devicons'}

  
  --neotree
  -- Unless you are still migrating, remove the deprecated commands from v1.x
  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
   }

  use({
    'noib3/nvim-cokeline',
    --requires = 'kyazdani42/nvim-web-devicons', -- If you want devicons
    config = function()
      require('cokeline').setup()
    end
  })

  -- using packer.nvim
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  use {'nvim-treesitter/nvim-treesitter', run= ':TSUpdate'}
  
  -- autotag
  use {'windwp/nvim-ts-autotag'}
  -- auto pairs
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use {'p00f/nvim-ts-rainbow'}

  --which key popup
  use {'folke/which-key.nvim'}
end)
