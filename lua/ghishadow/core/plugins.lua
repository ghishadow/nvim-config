return {
    -- My plugins here  
   {
    'declancm/cinnamon.nvim',
    config = function() require('cinnamon').setup() end
    },
     'sunjon/shade.nvim',
     'folke/lsp-colors.nvim',
      'NvChad/nvim-colorizer.lua',
     'folke/trouble.nvim',
     "folke/todo-comments.nvim",
     'simrat39/symbols-outline.nvim',
     'simrat39/rust-tools.nvim',
     'andymass/vim-matchup' ,
    {
  "EdenEast/nightfox.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
    config = function()
    --require'onedark'.setup {
    --    style = 'darker'
    --  }
    end
},
  {
    'kdheepak/tabline.nvim',
    config = function()
      require'tabline'.setup {
        -- Defaults configuration options
        enable = true,
        options = {
        -- If lualine is installed tabline will  separators configured in lualine by default.
        -- These options can be d to override those settings.
          section_separators = {'', ''},
          component_separators = {'', ''},
          max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
          show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
          show_devicons = true, -- this shows devicons in buffer section
          show_bufnr = false, -- this appends [bufnr] to buffer section,
          show_filename_only = false, -- shows base filename only instead of relative path in filename
          modified_icon = "+ ", -- change the default modified icon
          modified_italic = false, -- set to true by default; this determines whether the filename turns italic if modified
          show_tabs_only = false, -- this shows only tabs instead of tabs + buffers
        }
      }
      vim.cmd[[
        set guioptions-=e " Use showtabline in gui vim
        set sessionoptions+=tabpages,globals " store tabpages and globals in session
      ]]
    end,
    },
    {
      "folke/twilight.nvim",
      config = function()
        require("twilight").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    },
     'nacro90/numb.nvim',
     --- 'wfxr/minimap.vim',
    ({
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    module = "persistence",
    config = function()
      require("persistence").setup()
    end,
    }),
     "b0o/schemastore.nvim",
     "rcarriga/nvim-notify",
     'ryanoasis/vim-devicons',
     {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    {
      "s",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      "S",
      mode = { "n", "o", "x" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    },
    {
      "r",
      mode = "o",
      function()
        require("flash").remote()
      end,
      desc = "Remote Flash",
    },
    {
      "R",
      mode = { "o", "x" },
      function()
        require("flash").treesitter_search()
      end,
      desc = "Flash Treesitter Search",
    },
    {
      "<c-s>",
      mode = { "c" },
      function()
        require("flash").toggle()
      end,
      desc = "Toggle Flash Search",
    },
  },
},
     'kyazdani42/nvim-tree.lua',
     "NoahTheDuke/vim-just",
     'nvim-orgmode/orgmode',
     "nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
     "nvim-lua/plenary.nvim", -- Useful lua functions used ny lots of plugins
     "windwp/nvim-autopairs", -- Autopairs, integrates with both cmp and treesitter
  {"numToStr/Comment.nvim",
    lazy = false;
  
  }, -- Easily comment stuff
     "kyazdani42/nvim-web-devicons",
     "moll/vim-bbye",
     "nvim-lualine/lualine.nvim",
     "akinsho/toggleterm.nvim",
     "ahmedkhalf/project.nvim",
     { "ellisonleao/glow.nvim", branch = 'main' },
     {
      'rmagatti/goto-preview',
      config = function()
        require('goto-preview').setup {}
      end
    },
     "lewis6991/impatient.nvim",
     "lukas-reineke/indent-blankline.nvim",
     "goolord/alpha-nvim",
     "antoinemadec/FixCursorHold.nvim", -- This is needed to fix lsp doc highlight
     "folke/which-key.nvim",
     "onsails/lspkind.nvim",
     { 'akinsho/bufferline.nvim', dependencies = 'kyazdani42/nvim-web-devicons' },
     { "Tastyep/structlog.nvim" },
  
    -- cmp plugins
     "hrsh7th/nvim-cmp" ,-- The completion plugin
     "hrsh7th/cmp-buffer", -- buffer completions
     "hrsh7th/cmp-path", -- path completions
     "hrsh7th/cmp-cmdline", -- cmdline completions
     "saadparwaiz1/cmp_luasnip", -- snippet completions
     "hrsh7th/cmp-nvim-lsp",
     "hrsh7th/cmp-nvim-lua",
    
     {
      'David-Kunz/cmp-npm',
      dependencies = {
        'nvim-lua/plenary.nvim'
      }
    },
     "hrsh7th/cmp-nvim-lsp-document-symbol",
     'hrsh7th/cmp-nvim-lsp-signature-help',

     'jvgrootveld/telescope-zoxide',
  
  
    -- snippets
     "L3MON4D3/LuaSnip", --snippet engine
     "rafamadriz/friendly-snippets", -- a bunch of snippets to use
  
    -- LSP
    "neovim/nvim-lspconfig", -- enable LSP
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    "tamago324/nlsp-settings.nvim", -- language server settings defined in json for
    "RRethy/vim-illuminate",
    'onsails/lspkind-nvim',
    {
      "ray-x/lsp_signature.nvim",
    },
    -- Telescope
   "nvim-telescope/telescope.nvim",
   { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    -- DAP
   'mfussenegger/nvim-dap',
   { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap" } },
   'theHamsta/nvim-dap-virtual-text',
   "nvim-telescope/telescope-dap.nvim",
   "ravenxrz/DAPInstall.nvim",
   "mfussenegger/nvim-dap-python",
  
    -- Treesitter
   {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
    },
  
    {
      'ericpubu/lsp_codelens_extensions.nvim',
      -- Only required for debugging
      dependencies = { { "nvim-lua/plenary.nvim", "mfussenegger/nvim-dap" } },
      config = function()
        require("codelens_extensions").setup()
      end,
    },
     'nvim-treesitter/nvim-treesitter-context',
     'nvim-treesitter/playground',
     "jose-elias-alvarez/nvim-lsp-ts-utils",
     'nvim-treesitter/nvim-treesitter-textobjects',
     "JoosepAlviste/nvim-ts-context-commentstring",
  
    -- Crates
     {
      'saecki/crates.nvim',
      tag = 'v0.2.1',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
        require('crates').setup()
      end,
    },
    -- Git
    "lewis6991/gitsigns.nvim",
  
   }


