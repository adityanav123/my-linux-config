#!/bin/bash
echo 
echo
echo "| -----------------------------------------------  |"
echo "| Installing ZSH & exa (alternative to ls command) |"
echo "| -----------------------------------------------  |"

distro=$1

if [[ $distro -eq 1 ]]
then
	# echo "arch"
	sudo pacman -Sy zsh exa
elif [[ $distro -eq 2 ]]
then	
	# echo "debian"
	sudo apt install zsh exa
elif [[ $distro -eq 3 ]]
then
	# echo "fedora"
	sudo dnf install zsh exa
else
	echo "invalid option.exit."
	exit
fi

exit # exiting the zsh shell created.
