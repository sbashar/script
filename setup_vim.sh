#!/bin/bash
echo "Setup vim"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln ~/script/.vimrc ~/.vimrc
vim +PluginInstall +qall
echo "export TERM=xterm-256color" >> ~/.bash_profile
source ~/.bash_profile
echo done
