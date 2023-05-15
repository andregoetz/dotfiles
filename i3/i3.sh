#!/bin/bash

if [[ $1 == "-p" ]]; then
    echo "Installing packages"
    yay -S rofi-greenclip redshift flameshot
else
    p=$(pwd)/$(dirname $0)

    ln -sf "$p"/config ~/.config/i3/config
    ln -sf "$p"/i3blocks.conf ~/.config/i3/i3blocks.conf
    ln -sf "$p"/powermenu ~/.config/i3/scripts/powermenu
fi
