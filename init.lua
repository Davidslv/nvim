-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vim-test
vim.g['test#neovim#term_position'] = 'vert'
vim.g['test#strategy'] = 'neovim'

require "plugins" -- neovim plugin manager

require "settings"
require "settings.keymaps"
require "settings.colorscheme"

require "plugins.alpha"
require "plugins.nvim-tree"
require "plugins.nvim-treesitter"
require "plugins.toggleterm"
require "plugins.which-key"

-- LSP Config
require "lsp"
