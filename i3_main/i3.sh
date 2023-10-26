#!/bin/bash

p=$(pwd)/$(dirname $0)

ln -sf "$p"/config ~/.config/i3/config
ln -sf "$p"/i3blocks.conf ~/.config/i3/i3blocks.conf
ln -sf "$p"/powermenu.rasi ~/.config/rofi/powermenu.rasi
ln -sf "$p"/scripts/powermenu ~/.config/i3/scripts/powermenu
ln -sf "$p"/scripts/volume ~/.config/i3/scripts/volume
ln -sf "$p"/scripts/microphone ~/.config/i3/scripts/microphone
ln -sf "$p"/scripts/cpu_usage ~/.config/i3/scripts/cpu_usage
ln -sf "$p"/scripts/time ~/.config/i3/scripts/time
ln -sf "$p"/scripts/suspend_after_lock ~/.config/i3/scripts/suspend_after_lock
ln -sf "$p"/scripts/apply-resolution ~/.local/bin/apply-resolution
ln -sf "$p"/scripts/toggle_dpms ~/.local/bin/toggle_dpms
ln -sf "$p"/scripts/dpms ~/.config/i3/scripts/dpms
ln -sf "$p"/.Xresources ~/.Xresources
ln -sf "$p"/mimeapps.list ~/.config/mimeapps.list

mkdir -p ~/.i3
ln -sf "$p"/bg.png ~/.i3/bg.png
ln -sf "$p"/layouts/workspace-1.json ~/.i3/workspace-1.json
ln -sf "$p"/layouts/workspace-2.json ~/.i3/workspace-2.json
ln -sf "$p"/layouts/workspace-3.json ~/.i3/workspace-3.json
