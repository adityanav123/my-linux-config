#!/bin/bash


echo "enter distro code."

echo "|----------------|"
echo "|1. Arch         |"
echo "|2. Debian       |"
echo "|3. Fedora       |"
echo "|----------------|"

echo "enter(1/2/3):>"
read distro


echo "Pre-Requisites Check.(git neovim kitty unzip curl wget zsh)"

requisiteFlag=0

if [[ $(command -v git) ]]
then	
	:
else
	requisiteFlag=1
	echo "git not installed."
fi

if [[ $(command -v nvim) ]]
then	
	:
else
	echo "Do you want to setup neovim? y/N"
	read neovim_choice
	if [[ "$neovim_choice" == "y" || "$neovim_choice" == "Y" ]]
	then
		bash install-neovim.sh $distro
	else
		:
	fi
fi

if [[ !$(command -v kitty) ]]
then
	:
else
	echo "Do you want to setup kitty terminal emulator? y/N"
	read kitty_choice
	if [[ "$kitty_choice" == "y" || "$kitty_choice" == "Y" ]]
	then
		bash install-kitty.sh $distro
	else
		:
	fi
fi

if [[ $(command -v unzip) ]]
then
	:
else
	requisiteFlag=1
	echo "Unzip not installed"
fi


if [[ $(command -v curl) ]]
then
	:
else
	requisiteFlag=1
	echo "curl not installed"
fi


if [[ $(command -v wget) ]]
then
	:
else
	requisiteFlag=1
	echo "wget not installed"
fi


if [[ $(command -v zsh) ]]
then
	:
else
	echo "Do you want to setup zsh shell? y/N"
	read zsh_choice
	if [[ "$zsh_choice" == "y" || "$zsh_choice" == "Y" ]]
	then
		bash zsh-install.sh $distro
	else
		:
	fi
fi

if [[ "$requisiteFlag" == "1" ]]
then
	exit
fi

echo "done.."

while [[ "$choice" != "q" ]]
do
	echo "++++++++++++++++++++++++++++++++"
	echo "Setup Configuration(s) for : "
	echo "	1. Kitty"
	echo "	2. Neovim"
	echo "	3. ZSH(omz)"
	echo "	4. Nerd Fonts"
	echo "	   4.1 Fira Code Nerd Font"
	echo "	   4.2 Monofur NF"
	echo "++++++++++++++++++++++++++++++++"

	echo "enter choice (enter q/Q to exit)"
	read choice

	if [[ "$choice" == "1" ]]
	then
		# echo "Installing Kitty Configuration"
		bash ./kitty-conf.sh $distro
	elif [[ "$choice" == "2" ]]
	then
		# echo "Installing neovim configuration"
		bash ./neovim-config.sh $distro
	elif [[ "$choice" == "3" ]]
	then
		# echo "Install OhMyZSH configuration"
		bash ./zsh-setup.sh $distro
	elif [[ "$choice" == "4" ]]
	then
		# echo "Installing Nerd Fonts"
		bash ./nerd-fonts-setup.sh $distro
	elif [[ "$choice" == "q" || "$choice" == "Q" ]]
	then
		exit
	else
		echo "invalid choice, try again"
	fi
done
