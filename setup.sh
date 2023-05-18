#!/bin/bash

if [[ $1 == "-p" ]]; then
    echo "Installing packages"
    yay -S zsh zoxide tmux gvim neovim python-pynvim vim-spell-de vim-spell-en \
    elinks encfs qpdf xclip ddgr ttf-meslo-nerd-font-powerlevel10k nvimpager \
    bash-language-server clang deno vim-language-server marksman-bin lua-language-server jdtls \
    gopls pyright vscode-html-languageserver vscode-css-languageserver typescript-language-server dockerfile-language-server rust-analyzer
else
    echo "Installing Oh My Zsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "Installing zsh plugins"
    git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    echo "Setting up nvchad"
    git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 
fi
