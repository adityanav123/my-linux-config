#!/bin/bash

echo "Installing ZSH & exa (alternative to ls command)"
distro=$1

if [[ $distro -eq 1 ]]
then
	echo "arch"
	sudo pacman -Syu && sudo pacman -Sy zsh
	sudo pacman -Syu exa
elif [[ $distro -eq 2 ]]
then	
	echo "debian"
	sudo apt update && sudo apt install zsh
	sudo apt install exa
elif [[ $distro -eq 3 ]]
then
	echo "fedora"
	sudo dnf update && sudo dnf install zsh
	sudo dnf install exa
else
	echo "invalid option.exit."
	exit
fi
