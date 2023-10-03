#!/bin/bash

if [[ $1 == "-p" ]]; then
    echo "Installing packages"
    yay -S zsh zoxide neovim python-pynvim vim-spell-de vim-spell-en \
    encfs qpdf xclip ttf-meslo-nerd-font-powerlevel10k \
    betterlockscreen gnome-disk-utility gnome-keyring gnome-system-monitor gnome-calculator xorg-xev \
    geoclue redshift copyq xss-lock firefox-developer-edition ripgrep-all \
    mimeo flatpak htop element-desktop docker docker-compose just epson-inkjet-printer-escpr \
    github-cli nodejs npm nvimpager xkblayout-state-git perl-anyevent-i3 perl-json-xs gnome-calendar \
    xdotool xsane python-pip python-pipx fbreader ansible steam badlion-client wine heroic-games-launcher-bin \
    texlive biber texlive-langgerman openjdk-src openjdk-doc jdk-openjdk jre-openjdk maven go visual-studio-code-bin \
    yt-dlp qt5ct adwaita-qt5-git
    flatpak install flathub io.github.spacingbat3.webcord com.github.tchx84.Flatseal io.gitlab.librewolf-community com.github.Eloston.UngoogledChromium \
    org.libreoffice.LibreOffice org.flameshot.Flameshot org.gimp.GIMP com.github.vladimiry.ElectronMail org.mozilla.Thunderbird com.github.jeromerobert.pdfarranger \
    org.qbittorrent.qBittorrent org.gnome.SimpleScan com.belmoussaoui.Authenticator org.videolan.VLC com.nextcloud.desktopclient.nextcloud org.gnome.Evince \
    com.github.xournalpp.xournalpp com.sigil_ebook.Sigil org.inkscape.Inkscape com.github.micahflee.torbrowser-launcher
else
    echo "Installing Oh My Zsh"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "Installing zsh plugins"
    git clone https://github.com/zsh-users/zsh-autosuggestions.git "$HOME"/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME"/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
fi
