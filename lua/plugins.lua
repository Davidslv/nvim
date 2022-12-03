-- https://github.com/nanotee/nvim-lua-guide
-- https://github.com/crivotz/nv-ide

local fn = vim.fn

-- Automatically install packer
-- ~/.local/share/nvim/site/pack/packer/start/packer.nvim
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- load lua path

	local lua_path = function(name)
		return string.format("require.'plugins.%s'", name)
	end


  -- use { "lewis6991/impatient.nvim" } -- improves startup time.
  use { "wbthomason/packer.nvim" } -- Have packer manage itself
  use { "nvim-lua/plenary.nvim" }  -- Useful lua functions used by lots of plugins
  use { "windwp/nvim-autopairs" }  -- Autopairs, integrates with both cmp and treesitter

  use {
    "goolord/alpha-nvim", -- a programmable greeter for neovim.
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
      require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  }

  -- Cmp
  use { "hrsh7th/nvim-cmp" } -- A completion engine plugin
  use { "hrsh7th/cmp-buffer" } -- buffer completions
  use { "hrsh7th/cmp-path" } -- path completions
	use { "saadparwaiz1/cmp_luasnip" } -- snippet completions
	use { "hrsh7th/cmp-nvim-lsp" }
	use { "hrsh7th/cmp-nvim-lua" }

	-- Snippets
  use { "L3MON4D3/LuaSnip" } --snippet engine
  use { "rafamadriz/friendly-snippets" } -- a bunch of snippets to use

	-- LSP
  use {
    -- Extension to mason.nvim that makes it easier to use lspconfig
    "williamboman/mason-lspconfig.nvim",
    requires = {
      { "neovim/nvim-lspconfig" },  -- enable LSP
      { "williamboman/mason.nvim" } -- simple to use language server installer
    }
   }
  -- https://github.com/neoclide/coc.nvim
  -- need this to glue with sorbet
  -- http://mikker.github.io/2019/06/21/using-sorbet-with-vim-via-coc.html
	-- cd ~/.local/share/nvim/site/pack/packer/start/coc.nvim
	-- yarn install
  use { "neoclide/coc.nvim", branch = 'release' }
	use { 'lervag/vimtex' }

	-- Colorschemes
  use { "olimorris/onedarkpro.nvim" }
  use { "folke/tokyonight.nvim" }
  use { "shaunsingh/nord.nvim" }

	-- Telescope DD
	use {
    "nvim-telescope/telescope.nvim", -- Find, Filter, Preview, Pick
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "sharkdp/fd" },         -- finds entries in your filesyste
      { "BurntSushi/ripgrep" }, -- recursively searches directories for a regex pattern
      { "nvim-treesitter/nvim-treesitter" }
    }
  }

	-- Neovim Tooling
  use { "nvim-lualine/lualine.nvim" }       -- Status line
  use { "jose-elias-alvarez/null-ls.nvim" } -- for formatters and linters
  use { "RRethy/vim-illuminate" }   -- highlights uses of the word under the cursor
  use { "folke/which-key.nvim" }    -- Displays a popup with possible keybindings
  use { "folke/trouble.nvim" }      -- Helps solve trouble with code
	use { "lewis6991/gitsigns.nvim" } -- Git integration for buffers
  use { "lukas-reineke/indent-blankline.nvim" } -- vertical indentation alignment lines
  use {
    "nvim-tree/nvim-tree.lua", -- A file explorer tree for neovim written in lua
    requires = {
      { "nvim-tree/nvim-web-devicons" } -- enables icons for nvim-tree
    }
  }

  use { "akinsho/toggleterm.nvim" } -- helps to manage multiple terminal windows
  use { "ahmedkhalf/project.nvim" } -- superior project management
  use { "rcarriga/nvim-notify" }    -- notification manager for NeoVim
  use { "beauwilliams/focus.nvim" } -- auto-resizing splits/windows

  -- My own Tooling
  use { "johnfrankmorgan/whitespace.nvim" } -- highlights and removes trailing whitespace

  use { "tpope/vim-rake" }
  use { "tpope/vim-rails" }
  use { "tpope/vim-endwise" }

  use { "tpope/vim-bundler" } -- support for bundler
  use { "tpope/vim-commentary" } -- support to make comments
  use { "tpope/vim-dispatch" } -- Asynchronous build and test dispatcher
  use { "tpope/vim-fugitive" } -- Git wrapper

  use { "tpope/vim-repeat" } -- enables '.' to repeat commands from plugins
  use { "vim-ruby/vim-ruby" } -- contains Vim's runtime files for ruby support

  use { "vim-test/vim-test" } -- running ruby tests inside editor
  use { "thoughtbot/vim-rspec" } -- a lightweight RSpec runner

  -- use {
  --   "pwntester/octo.nvim", -- Edit and review GitHub pull requests
  --   requires = {
  --     { "nvim-lua/plenary.nvim" },
  --     { "nvim-telescope/telescope.nvim" },
  --     { "nvim-tree/nvim-web-devicons" },
  --   }
  -- }

  use { "fedepujol/move.nvim" } -- moves lines vertically / horizontally
	use { 'christoomey/vim-tmux-navigator' } -- Tmux


  -- frontend
  -- use { "nvchad/nvim-colorizer.lua" }

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
