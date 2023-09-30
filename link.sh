#!/bin/bash

p=$(pwd)/$(dirname $0)

ln -sf $p/.xprofile $HOME/.xprofile
ln -sf $p/.xprofile $HOME/.profile
ln -sf $p/.vimrc $HOME/.vimrc
mkdir -p $HOME/.config/nvim
ln -sf $p/.vimrc $HOME/.config/nvim/init.vim
ln -sf $HOME/.config/nvim $HOME/.config/nvimpager
ln -sf $p/.tmux.conf $HOME/.tmux.conf
ln -sf $p/.zshrc $HOME/.zshrc
ln -sf $p/andiru.zsh-theme $HOME/.oh-my-zsh/custom/themes/andiru.zsh-theme
