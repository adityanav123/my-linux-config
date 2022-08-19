#!/bin/bash

echo "ZSH Configuration"

if [[ $(command -v zsh) ]]; then
	echo "zsh is installed, installing ohmyzsh"
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	echo
	echo "Assigning shorthand 'v' for NeoVim"
	echo "Install exa, else 'ls' command will throw error"
	echo "*reboot your system after the installations*"
else
	echo "first install zsh first"
	exit
fi
