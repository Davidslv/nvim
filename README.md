<h1 align="center">
  <img src="https://raw.githubusercontent.com/neovim/neovim.github.io/master/logos/neovim-logo-300x87.png" alt="Neovim">
</h1>

[Documentation](https://neovim.io/doc/general/) |
[Github](https://github.com/neovim/neovim/)

# Pre-Installation

Make sure you have install [homebrew](https://brew.sh/).
Then run the following command to install Neovim and some dependencies.

[See the [Brewfile][brewfile] for details]
[brewfile]: https://github.com/Davidslv/nvim/blob/main/Brewfile

```
brew bundle install --verbose --no-lock
```



# Installation

Clone this repository into `~/.config/nvim`

```
git clone git@github.com:Davidslv/nvim.git ~/.config/nvim
```

## Healtcheck

Open `nvim` and enter the following:

```
:checkhealth
```

### Folder structure

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

### Custom Development Environment

Each vim is quite personal to each individual, you should customize it to your own needs.

- Lua-fy everthing
  - Settings
  - Keymaps
  - Commands
  - Autocmds
  - etc..

### Commands

| Plugin         | Command       | Description                                                                                          |
|----------------|:-------------:|-----------------------------------------------------------------------------------------------------:|
| [NvimTree][1]  |  a            | Press `a` (**a**dd) to create a new file, you need to be on the file Explorer                        |
| [NvimTree][1]  |  r            | Press `r` (**r**ename) to rename a file/folder                                                       |
| [NvimTree][1]  |  d            | Press `d` (**d**elete) to delete a file/folder                                                       |
| [NvimTree][1]  |  o            | Press `o` (**o**pen) to open a folder                                                                |
| [NvimTree][1]  |  f            | Press `f` (**f**ilter) to filter files with given match                                              |
| [WhichKey][2]  | \<leader\>w   | Press `\w` to popup menu with possible key bindings                                                  |
| [Telescope][3] | \<leader\>ff  | Press `\ff` to popup menu to find files by name                                                      |
| [Telescope][3] | \<leader\>fg  | Press `\fg` to popup menu to find text in files                                                      |
| [Telescope][3] | \<leader\>fb  | Press `\fb` to popup menu to list open buffers in current Neovim instance                            |
| Native         | \<C-v\>       | Press `CTRL + v` to enter visual mode (text selection)                                               |
| Native         | \<C-v\> + c   | `CTRL + v`, select, press `c`, apply your change, press `ESC`, everything select should have changed |

[1]: https://github.com/nvim-tree/nvim-tree.lua
[2]: https://github.com/folke/which-key.nvim
[3]: https://github.com/nvim-telescope/telescope.nvim


## Ruby

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


### Troubleshooting

`:LspRestart`

Warning: The workspace is too large to index
- https://github.com/castwide/solargraph/issues/54


`neoclide/coc.nvim`

> [coc.nvim] build/index.js not found, please install dependencies and compile coc.nvim by: yarn install

You need to run `yarn install` manually in the `coc.nvim` packer directory

```
cd ~/.local/share/nvim/site/pack/packer/start/coc.nvim
yarn install
```

**Trigger completion**

https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources#use-tab-or-custom-key-for-trigger-completion



### Have fun!

That's it...
