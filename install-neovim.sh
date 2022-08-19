#!/bin/bash

distro=$1

if [[ $distro -eq 1 ]]
then
	echo "arch"
	sudo pacman -Syu && sudo pacman -Sy neovim
elif [[ $distro -eq 2 ]]
then	
	echo "debian"
	sudo apt update && sudo apt install neovim
elif [[ $distro -eq 3 ]]
then
	echo "fedora"
	sudo dnf update && sudo dnf install neovim
else
	echo "invalid option.exit."
	exit
fi
