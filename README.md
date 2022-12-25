![ss](https://user-images.githubusercontent.com/87912847/209464154-62681ed4-41c3-4a44-80e7-fda7a5a64a66.jpeg)
![r](https://user-images.githubusercontent.com/87912847/209464360-696347d9-fe9a-4701-bbd1-b360051343eb.jpeg)

# My Dotfiles

> **Warning** : These configurations are personal. When you choose to use it, do so at your own peril.


## Install All
```shell
brew install neovim fish tmux &&
git clone https://github.com/ahmedsaheed/dotfiles.git ~/.config

```

# Contents
- Neovim config
- Fish config
- Tmux config


## NeoVim Config With Copilot

> **Note** : This requires thre following:
- Neovim `brew install neovim`
- Node 12+ `brew install node`


#### Initial Setup

```bash
git clone --filter=blob:none --sparse  https://github.com/ahmedsaheed/dotfiles.git ~/.config/nvim
&& cd ~/.config/nvim && git sparse-checkout add nvim && nvim                                                               

```

> **Note**, Here there'd be an error, you'd need to run `:PackerSync` to install plugins. 

#### Setup Copilot (Optional):

```bash
git clone https://github.com/github/copilot.vim.git \
  ~/.config/nvim/pack/github/start/copilot.vim && nvim
```
> Now run `:Copilot Setup` to setup GitHub Copilot

#### Plugins
- Packer
- Nvim - Treesitter
- GitHub Copilot
- Lsp-Config
- Prettier
- Numb
- One Dark Theme
- Mason
- Nvim - Tree
- Markdown - Preview
- Telescope
- Buffer line
- COC
- CMP
- Trouble
- Lua-Line


<details><summary>Keybinds</summary>


> Leader key is <kbd>,</kbd> (ascii comma)

### Normal Mode

> <kbd>, + r</kbd> - toggle trouble to debug\
> <kbd>, + f</kbd> - telescope find files\
> <kbd>, + F</kbd> - telescope grep search\
> <kbd>, + t</kbd> - toggle terminal\
> <kbd>, + w</kbd> - save (:w)\
> <kbd>, + q</kbd> - quit (:q)\
> <kbd>, + m</kbd> - toggle file tree\
> <kbd>f</kbd> - easymotion forwards\
> <kbd>F</kbd> - easymotion backwards\
> <kbd>gcc</kbd> - comment out a line\
> <kbd>C-n</kbd> - spawn cursor on the same word

### Insert Mode

<kbd>esc</kbd> - exit insert mode

### Visual Mode

<kbd>gc</kbd> - comment out a selection\
<kbd>C-n</kbd> - spawn cursors on each line of the selected text

</details>


## Fish Config

- [Fish shell](https://fishshell.com/)
- [Fisher](https://github.com/jorgebucaran/fisher) - Plugin manager
- [Exa](https://the.exa.website/) - `ls` replacement
- [Starship](https://starship.rs/) - customizable prompt for any shell
- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts) - Nerd Font
- [Jump](https://github.com/gsamokovarov/jump) - Navigate faster on your shell





## Tmux Config

- [Tmux](https://github.com/tmux/tmux/wiki)
- [gpakosz configuration](https://github.com/gpakosz/.tmux)


## Font 

- [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts)

