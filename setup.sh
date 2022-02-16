#!/bin/bash

sudo pacman -S zsh gvim neovim python-pynvim vim-spell-de vim-spell-en
git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
mkdir -p $HOME/.config/nvim
