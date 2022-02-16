#!/bin/bash

if [[ $1 == "-i" ]]; then
    sudo pacman -S zsh gvim neovim python-pynvim vim-spell-de vim-spell-en
fi
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
mkdir -p $HOME/.config/nvim
