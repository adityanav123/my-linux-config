#!/bin/bash

echo 
echo

echo "| ----------------|"
echo "| installing kitty|"
echo "| ----------------|"


distro=$1

if [[ $distro -eq 1 ]]
then
	# echo "arch"
	sudo pacman -Sy kitty
elif [[ $distro -eq 2 ]]
then	
	# echo "debian"
	sudo apt install kitty
elif [[ $distro -eq 3 ]]
then
	# echo "fedora"
	sudo dnf install kitty
else
	echo "invalid option.exit."
	exit
fi




# install kitty configutation.

