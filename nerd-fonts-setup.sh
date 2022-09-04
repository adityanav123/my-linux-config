#!/bin/bash

echo 
echo
echo "|--------------------------------------------|"
echo "|currently this scripts installs 2 fonts only|"
echo "|	1. Fira Code NF						   	   |"
echo "|	2. Monofur NF						       |"
echo "|	q. Quit								       |"
echo "|--------------------------------------------|"


if [ $? -eq 0 ]
then
	echo "enter choice (1 / 2 / q) -"
	read choice
	echo ""
else
	choice=$1
fi


if [[ "$choice" == "1" ]]
then
	# echo "Fira Code NF"
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip -P /var/tmp
elif [[ "$choice" == "2" ]]
then
	# echo "Monofur NF"
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Monofur.zip -P /var/tmp
elif [[ "$choice" == 'q' ]]
then
	exit
fi

# installing fonts
current=$(pwd)
cd /var/tmp
if [ -d "~/.fonts" ]
then
	unzip ./FiraCode.zip -d ~/.fonts > /dev/null 2&1 &
else
	mkdir ~/.fonts
	unzip ./FiraCode.zip -d ~/.fonts > /dev/null 2>&1 &
fi
echo "Refreshing Font Cache, Please Wait."
fc-cache -f > /dev/null 2>&1 & 
cd $current

