#!/bin/bash

distro=$1

echo "|-----------------|"
echo "|Installing neovim|"
echo "|-----------------|"


if [[ $distro -eq 1 ]]
then
	echo "arch"
	sudo pacman -Sy neovim
elif [[ $distro -eq 2 ]]
then	
	echo "debian"
	sudo apt install neovim
elif [[ $distro -eq 3 ]]
then
	echo "fedora"
	sudo dnf install neovim
else
	echo "invalid option.exit."
	exit
fi
