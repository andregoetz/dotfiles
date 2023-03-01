#!/bin/bash

p=$(pwd)/$(dirname $0)

ln -sf $p/.xprofile $HOME
ln -sf $p/.vimrc $HOME
ln -sf $p/.vimrc $HOME/.config/nvim/init.vim
ln -sf $p/lua $HOME/.config/nvim
ln -sf $p/.tmux.conf $HOME/.tmux.conf
ln -sf $p/.zshrc $HOME
ln -sf $p/andiru.zsh-theme $HOME/.oh-my-zsh/custom/themes
