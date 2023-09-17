#!/bin/bash

p=$(pwd)/$(dirname $0)

ln -sf "$p"/config ~/.config/i3/config
ln -sf "$p"/i3blocks.conf ~/.config/i3/i3blocks.conf
ln -sf "$p"/powermenu.rasi ~/.config/rofi/powermenu.rasi
ln -sf "$p"/powermenu ~/.config/i3/scripts/powermenu
ln -sf "$p"/volume ~/.config/i3/scripts/volume
ln -sf "$p"/microphone ~/.config/i3/scripts/microphone
ln -sf "$p"/time ~/.config/i3/scripts/time
ln -sf "$p"/.Xresources ~/.Xresources
ln -sf "$p"/mimeapps.list ~/.config/mimeapps.list

mkdir -p ~/.i3
ln -sf "$p"/layouts/workspace-1.json ~/.i3/workspace-1.json
ln -sf "$p"/layouts/workspace-2.json ~/.i3/workspace-2.json
ln -sf "$p"/layouts/workspace-5.json ~/.i3/workspace-5.json
