#!/bin/bash



source ~/hyprConfig/packages.arch # ~/hyprConfig/packages.arch

for pkg in ${packages[@]}; do
	sudo pacman -S $pkg --needed --noconfirm
done;

