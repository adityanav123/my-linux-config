#!/bin/bash
echo 
echo
distro=$1
echo "|---------------------------|"
echo "|neo-vim configuration setup|"
echo "|---------------------------|"

if [ ! -d "~/.config/nvim/" ]
then
	mkdir ~/.config/nvim/

    # Copying the config files.
	cp -r ./Neovim-Config-Files/init.vim ~/.config/nvim/
fi


# vim plug
if [ ! -d "~/.config/nvim/plugged" ]
then
    mkdir ~/.config/nvim/plugged/
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    nvim +PlugInstall
fi

# CoC config
echo "|-----------------------------------------------------------------|"
echo "|Installing. CoC for NeoVim. autocomplete, autocorrect in programs|"
echo "|-----------------------------------------------------------------|"

if [[ $(command -v node) && $(command -v npm) ]]
then
	:
else
    bash install-nodejs.sh $distro
    exit
fi

    sudo npm i -g yarn
    curr=$(pwd)
    cd ~/.config/nvim/plugged/coc.nvim/
    yarn install
    yarn build
    # echo "coc set up ; can install language servers now."
    cd $curr

echo "neovim config file : @ : [ ~/.config/nvim/init.vim ]"
