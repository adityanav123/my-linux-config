#!/bin/bash

distro=$1
echo 
echo

echo "| ----------------- |"
echo "| ZSH Configuration |"
echo "| ----------------- |"


if [ $(command -v zsh) ]; then
	echo "zsh is installed, installing ohmyzsh"
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	echo
	# echo "Assigning shorthand 'v' for NeoVim"
	# echo "Install exa, else 'ls' command will throw error"
	echo "*reboot your system after the installations*"
else
	echo "zsh not installed, installing."
	bash zsh-install.sh $distro
	bash zsh-setup.sh $distro	
fi

if [ -f "~/.zshrc" ]
then
	cp ~/.zshrc ~/.backupzshrc
	echo "taking backup of your old zshrc file, in ~/.backupzshrc"
fi
cp .zshrc ~/

exit