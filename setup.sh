#!/bin/bash

if [[ $1 == "-p" ]]; then
    echo "Installing packages"
    yay -S zsh zoxide neovim python-pynvim vim-spell-de vim-spell-en \
    encfs qpdf xclip ttf-meslo-nerd-font-powerlevel10k \
    betterlockscreen gnome-disk-utility visual-studio-code-bin gnome-keyring gnome-system-monitor gnome-calculator xorg-xev \
    geoclue redshift copyq xss-lock firefox-developer-edition ripgrep-all \
    mimeo flatpak htop element-desktop docker docker-compose just
    flatpak install flathub io.github.spacingbat3.webcord com.github.tchx84.Flatseal io.gitlab.librewolf-community com.github.Eloston.UngoogledChromium \
    org.libreoffice.LibreOffice org.flameshot.Flameshot org.gimp.GIMP com.github.vladimiry.ElectronMail org.mozilla.Thunderbird com.github.jeromerobert.pdfarranger \
    org.qbittorrent.qBittorrent org.gnome.SimpleScan com.belmoussaoui.Authenticator org.videolan.VLC com.nextcloud.desktopclient.nextcloud org.gnome.Evince
else
    echo "Installing Oh My Zsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "Installing zsh plugins"
    git clone https://github.com/zsh-users/zsh-autosuggestions.git "$HOME"/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME"/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
fi
