## My NeoVim Config With Copilot

> Requires
- Neovim
- Node 12+

https://user-images.githubusercontent.com/87912847/184781105-15139c3f-5046-4e5f-b884-cdb44448bd7c.mov

#### Initial Setup

```bash
git clone https://github.com/ahmedsaheed/neovim.git ~/.config/nvim && nvim
```

> Note, Here there'd be an error, you'd need to run `:PackerSync` to install plugins. 

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


<details><summary> Keybinds</summary>


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


