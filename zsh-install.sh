#!/bin/bash

echo "Installing ZSH"
distro=$1

if [[ $distro -eq 1 ]]
then
	echo "arch"
	sudo pacman -Syu && sudo pacman -Sy zsh
elif [[ $distro -eq 2 ]]
then	
	echo "debian"
	sudo apt update && sudo apt install zsh
elif [[ $distro -eq 3 ]]
then
	echo "fedora"
	sudo dnf update && sudo dnf install zsh
else
	echo "invalid option.exit."
	exit
fi
