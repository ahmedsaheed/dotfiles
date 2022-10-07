![Screenshot 2022-10-07 at 19 23 07](https://user-images.githubusercontent.com/87912847/194624456-6f3b7a97-d2b5-4459-bc93-30c5c7791ede.png)
![Screenshot 2022-10-06 at 22 53 19](https://user-images.githubusercontent.com/87912847/194425520-5b8cb50e-b212-45bc-afb8-5c4b9913adfc.png)

# My Dotfiles
> **Warning** : These configurations are personal. When you choose to use it, do so at your own peril.

# Contents
- Neovim config
- Fish config
- Git config


## NeoVim Config With Copilot

![Screenshot 2022-10-07 at 21 33 18](https://user-images.githubusercontent.com/87912847/194648251-28561e34-0c67-4cf7-a086-8a72644799af.png)


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






