-- Automatically install and set up packer.nvim on any machine this config is cloned to
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end


return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'Raimondi/delimitMate'
    use 'nvim-treesitter/nvim-treesitter'
    use 'tpope/vim-commentary'
    use 'terryma/vim-multiple-cursors'
    use 'mrjones2014/smart-splits.nvim'
    use 'goolord/alpha-nvim'
    use 'gelguy/wilder.nvim'
    use 'kshenoy/vim-signature'
    use 'tpope/vim-fugitive'
    use 'github/copilot.vim'
    use 'neovim/nvim-lspconfig'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'MunifTanjim/prettier.nvim'
    use 'nacro90/numb.nvim'
    use 'mfussenegger/nvim-jdtls'
    use 'glepnir/lspsaga.nvim' -- LSP UIs
    -- Themes
use { "catppuccin/nvim", as = "catppuccin" }
use {'nyoom-engineering/oxocarbon.nvim'}

    use {
        'CRAG666/code_runner.nvim',
        requires = 'nvim-lua/plenary.nvim',
    }

    use { "williamboman/mason.nvim" }
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
          require('gitsigns').setup()
        end
      }

    use {
    "folke/zen-mode.nvim",
    config = function()
    require("zen-mode").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
     }
        end
    }
      use{"lewis6991/hover.nvim", config = function()
        require('hover').setup{
            init = function()
                -- Require providers
                require('hover.providers.lsp')
              end,
              preview_opts = {
                border = nil
              },
              title = true
            }
        end}
        


    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons',
        },
    }
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = function()
            require('telescope').setup{
                defaults = { file_ignore_patterns = {"node_modules"} }
            }
        end
    }

    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

    use {
        'neoclide/coc.nvim',
        branch = 'release',
    }


    use {
        'phaazon/hop.nvim',
        branch = 'v1',
        config = function()
            require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }
       use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
            'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
            'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
            'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
        }
    }
    use {"akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
  require("toggleterm").setup()
end}
use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        position = "bottom", -- position of the list can be: bottom, top, left, right
        height = 10, -- height of the trouble list when position is top or bottom
        width = 50, -- width of the list when position is left or right
        icons = true, 
      }
    end
  }

     use {
         'nvim-lualine/lualine.nvim',
         requires = { 'kyazdani42/nvim-web-devicons', opt = true },
     }

end)

