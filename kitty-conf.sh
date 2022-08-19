#!/bin/bash

echo "setting up kitty."

### CREATING KITTY CONFIGURATION FOLDER
if [ ! -d "~/.config/kitty/" ]
then
	mkdir ~/.config/kitty/
	cp -r ./kitty-config-files/kitty.conf ~/.config/kitty/
fi


#installing nerd font
bash nerd-fonts-setup.sh 1

echo "installing theme, Earthsong.conf"

# Setting up Earthsong theme
THEME=https://raw.githubusercontent.com/dexpota/kitty-themes/master/themes/Earthsong.conf
wget "$THEME" -P ~/.config/kitty/


