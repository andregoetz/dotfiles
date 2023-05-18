#!/bin/bash

p=$(pwd)/$(dirname $0)

ln -sf $p/.xprofile $HOME/.xprofile
ln -sf $p/.xprofile $HOME/.profile
ln -sf $p/.vimrc $HOME/.vimrc
ln -sf $p/custom $HOME/.config/nvim/lua/custom
ln -sf $p/.tmux.conf $HOME/.tmux.conf
ln -sf $p/.zshrc $HOME/.zshrc
ln -sf $p/andiru.zsh-theme $HOME/.oh-my-zsh/custom/themes/andiru.zsh-theme
