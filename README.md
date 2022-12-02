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
gem install neovim solargraph
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


### Have fun!

That's it...
