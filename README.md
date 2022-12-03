<h1 align="center">
  <img src="https://raw.githubusercontent.com/neovim/neovim.github.io/master/logos/neovim-logo-300x87.png" alt="Neovim">
</h1>

[Documentation](https://neovim.io/doc/general/) |
[Github](https://github.com/neovim/neovim/)

# Installation

Clone this repository into `~/.config/nvim`

```
git clone git@github.com:Davidslv/neovim.git ~/.config/nvim
```

## Healtcheck

Open `nvim` and enter the following:

```
:checkhealth
```

## Ruby

- Make sure you have your package manager install
- Make sure you do have a ruby version installed

```
$ gem install neovim solargraph

cd /path/to/workspace

# in the directory of the project create a .solargraph.yml file
touch .solargraph.yml
```

- https://solargraph.org/guides/configuration

```yaml
include:
- "**/*.rb"
exclude:
- spec/**/*
- test/**/*
- vendor/**/*
- db/**/*
- ".bundle/**/*"
require: []
domains: []
reporters:
- rubocop
- require_not_found
max_files: 8000
```

And then scan the project directory

```
$ solargraph scan -v
```

### Folder structure

```
lua
├── lsp                    - LSP Configuration
├── plugins                - this is where you setup your plugins
│  ├── alpha.lua
│  ├── nvim-tree.lua
│  ├── nvim-treesitter.lua
│  ├── toggleterm.lua
│  └── which-key.lua
├── plugins.lua            - this is where all plugins are installed, via packer
└── settings
   ├── colorscheme.lua
   ├── init.lua            - main settings
   ├── keymaps             - this is where you setup your keymaps
   │  ├── nvim-tree.lua
   │  ├── telescope.lua
   │  └── toggleterm.lua
   └── keymaps.lua
```

### Troubleshooting

`:LspRestart`

Warning: The workspace is too large to index
- https://github.com/castwide/solargraph/issues/54




### Have fun!

That's it...