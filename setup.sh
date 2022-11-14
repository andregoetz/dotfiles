#!/bin/bash

if [[ $1 == "-p" ]]; then
    echo "Installing packages"
    sudo pacman -S zsh zoxide most \
    gvim neovim python-pynvim vim-spell-de vim-spell-en \
    elinks encfs qpdf xclip
    yay -S ddgr ttf-meslo-nerd-font-powerlevel10k
else
    echo "Installing Oh My Zsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "Installing zsh plugins"
    git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    echo "Creating nvim config folder"
    mkdir -p $HOME/.config/nvim
fi
