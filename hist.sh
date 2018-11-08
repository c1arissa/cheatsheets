#!/bin/bash

git clone https://github.com/dracula/vim.git ~/.vim/bundle/dracula
cd ~/.vim/bundle/dracula

mkdir dracula 
mkdir dracula/autoload
mkdir dracula/autoload/airline
mkdir dracula/autoload/airline/themes 
mkdir dracula/colors
cp -r ~/dracula/autoload/* ~/.vim/bundle/dracula/autoload
cp -r ~/dracula/colors/* ~/.vim/bundle/dracula/colors
