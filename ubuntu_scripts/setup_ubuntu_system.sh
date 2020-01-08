#!/bin/bash

echo "Update system"
sudo apt -y update
echo done

echo "Upgrade system"
sudo apt -y upgrade
echo done

echo "Install software"

echo "Install git"
sudo apt install -y git
sudo apt install -y vim
echo done

echo "Setup gitconfig"
git config --global user.name "Saydul Bashar"
git config --global user.email "saydul.bashar@superawesome.com"
git config --global color.ui true
echo done

echo "Setup vim"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -sf /home/saydul/development/script/ubuntu_scripts/.vimrc /home/saydul/.vimrc
vim +PluginInstall +qall
echo done

echo "Setup environment"
echo "export EDITOR=vim" >> ~/.profile
source ~/.profile
echo done
