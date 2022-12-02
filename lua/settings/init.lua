-- :help option-list
-- https://neovim.io/doc/user/options.html
-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
--
local set = vim.opt

-- General Configuration
set.history     = 500           -- Number of things to remember in history.
set.timeoutlen  = 250           -- Time to wait after ESC (default causes an annoying delay
set.autoread    = true          -- If the file is saved in another editor, it reloads
set.swapfile    = false
set.completeopt = { "menuone", "noselect" }
set.backup      = false

-- Visual
set.number     = true           -- Line numbers off
set.showmatch  = true           -- Show matching brackets.
set.matchtime  = 5              -- Bracket blinking.
set.visualbell = true           -- No blinking
set.errorbells = false          -- No noise.
set.laststatus = 2              -- Always show status line.
set.cursorline = true
set.ruler      = true	          -- Shows column,line of the cursor
set.showcmd    = true 		      -- Display incomplete command in lower right corner
set.splitbelow = true
set.splitright = true
set.signcolumn = "yes"          -- always show the sign column, avoids shifting text
set.colorcolumn = "+1"          -- highlights column after 'textwidth'
set.showtabline = 2
set.scrolloff   = 8

set.sidescrolloff  = 8
set.relativenumber = false
set.conceallevel   = 0          -- so that `` is visible in markdown files

-- Match and search
set.hlsearch   = true           -- highlight search matches
set.incsearch  = true           -- incremental searching
set.ignorecase = true           -- searches are case insensitive...
set.smartcase  = true           -- ... unless they contain at least one capital letter
set.magic      = true

-- Formatting
set.wrap      = false           -- don't wrap lines
set.tabstop   = 2
set.expandtab = true            -- use spaces, not tabs
set.shiftwidth   = 2
set.softtabstop  = 2
set.fileencoding = "utf-8"
