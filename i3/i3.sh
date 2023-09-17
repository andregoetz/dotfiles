#!/bin/bash

p=$(pwd)/$(dirname $0)

ln -sf "$p"/config ~/.config/i3/config
ln -sf "$p"/i3blocks.conf ~/.config/i3/i3blocks.conf
ln -sf "$p"/powermenu.rasi ~/.config/rofi/powermenu.rasi
ln -sf "$p"/powermenu ~/.config/i3/scripts/powermenu
ln -sf "$p"/volume ~/.config/i3/scripts/volume
ln -sf "$p"/microphone ~/.config/i3/scripts/microphone
ln -sf "$p"/.Xresources ~/.Xresources
ln -sf "$p"/mimeapps.list ~/.config/mimeapps.list
