#!/bin/bash

if [[ $1 == "-i" ]]; then
    echo "Installing packages"
    sudo pacman -S zsh zoxide \
	gvim neovim python-pynvim vim-spell-de vim-spell-en \
	elinks encfs
    yay -S ddgr
fi
echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Installing zsh plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
echo "Creating nvim config folder"
mkdir -p $HOME/.config/nvim
