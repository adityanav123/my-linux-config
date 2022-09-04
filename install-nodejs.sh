#!/bin/bash


echo "|------------------------------|"
echo "|nodejs-LTS(v16.x) installation|"
echo "|------------------------------|"

distro=$1

if [[ $distro -eq 1 ]]
then
	# echo "arch"
	sudo pacman -Sy nodejs npm
elif [[ $distro -eq 2 ]]
then	
	# echo "debian"
	current=$(pwd)
	cd /var/tmp
	curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
	sudo bash nodesource_setup.sh
	sudo apt install nodejs
	cd $current
elif [[ $distro -eq 3 ]]
then
	# echo "fedora"
	sudo dnf install nodejs
else
	echo "invalid option.exit."
	exit
fi
	
