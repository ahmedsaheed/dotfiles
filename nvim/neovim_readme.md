## Neovim Config Man Page

This file contains helps and usage instructions for the accompanied nvim directory. 

### Some heads up

If you've successfully cloned this nvim configuration into your `~/.config`
you can easily get it runinng by typing `nvim` into the terminal. 
Note, if this is the first installation, you'd need to run `:PackerSync` to install required packages

### Plugins

Plugin Manager is [packer](https://github.com/wbthomason/packer.nvim)

| Plugin                                                             | Usage                              |
| ------------------------------------------------------------------ | ---------------------------------- |
| [Alpha](https://github.com/goolord/alpha-nvim)                     | Greeter for neovim                 |
| [Buffer Line](https://github.com/akinsho/bufferline.nvim)          | bufferline for Neovim              |
| [Lua Line](https://github.com/nvim-lualine/lualine.nvim)           | neovim statusline plugin           |
| [Mason](https://github.com/williamboman/mason.nvim)                | Package manager for Neovim         |
| [NVIM Tree](https://github.com/nvim-tree/nvim-tree.lua)            | A file explorer tree for neovim    |
| [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)   | Treesitter configuration           |
| [LSP Saga](https://github.com/glepnir/lspsaga.nvim)                | Neovim lsp plugin                  |
| [Toggle Term](https://github.com/akinsho/toggleterm.nvim)          | Easily manage multiple terminals   |
| [Zen Mode](https://github.com/folke/zen-mode.nvim)                 | Distraction-free coding for Neovim |
| [Git Sign](https://github.com/lewis6991/gitsigns.nvim)             | Git integration for buffers        |
| [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Find, Filter & Preview files       |
| [NVIM-CMP](https://github.com/hrsh7th/nvim-cmp)                    | A completion plugin for neovim     |
| [Github Copilot](https://github.com/github/copilot.vim)            | Neovim plugin for GitHub Copilot   |
| [Trouble](https://github.com/folke/trouble.nvim)                   | A pretty diagnostics               |

[See more here](https://github.com/ahmedsaheed/dotfiles/tree/master/nvim/plugin/lua/plugins/configs) 

### Key Binds

`Leader` key is `,`

| Key             | Binds                         |
| --------------- | ----------------------------- |
| `Leader` + `r`  | Toggle Debugger               |
| `Leader` + `f`  | Search Files                  |
| `Leader` + `F`  | Grep Files                    |
| `Leader` + `gd` | Goto Definition               |
| `Leader` + `gh` | Show function, variable usage |
| `Leader` + `ca` | Code Action                   |
| `Leader` + `m`  | Toggle Filetree View          |
| `Leader` + `o`  | Toggle Editor Outline         |
| `Leader` + `l`  | Hover Documentation           |
| `Leader` + `gr` | Rename Variable or function   |
| `Leader` + `t`  | Toggle Terminal               |


### AUTHOR
- Ahmed Saheed


### COPYRIGHT
[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)