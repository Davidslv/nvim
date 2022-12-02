-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require "plugins" -- neovim plugin manager

require "settings"
require "settings.colorscheme"

require "plugins.alpha"
require "plugins.nvim-tree"
