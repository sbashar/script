#!/bin/bash

echo "Update system"
sudo apt-get -y update
echo done

echo "Upgrade system"
sudo apt-get -y upgrade
echo done

echo "Copy ssh keys"
cp /vagrant/.ssh/github* ~/.ssh/
echo done

echo "setup authorized_keys"
cat >> ~/.ssh/authorized_keys << 'EOF'
 ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEA5nsf+pYLNWknL7E1zGUqcXup+Xwo0u+y2I3CMLdrYDhO5xCBXo3mEj4+9wp1xkq7X7MO0LfTPDXTcxMxprVkwQYYlkGaZeau8BqXXF0VvQN5O168CJM0atMrQUhbjkRWFUw5uujMguGbAn3pJsEe8y/3XpvO3VFcEe2N1xBw3I+CiLIdOC0Sszr5ud+5AsTtJDCHAhC3lHJNOOSF1k6JGfoRZ5CJ3Zga2trZAt5UzKgeYfMEjSe79Q8UDLZIGF8n4BnutsZCet/wJciIczPHky4bPyoZariAkoJIbcIhzJ5utv7CSPUo3n1w7iJd3anXWSPQdxWjuktfs1bwICG4Ow==
EOF
sudo service ssh restart
echo done

echo "Install Software"
sudo apt-get install -y git
echo done

echo "Setup gitconfig"
git config --global user.name "Saydul Bashar"
git config --global user.email "tamimnoone@gmail.com"
git config --global color.ui true
git config --global core.autocrlf input
echo done

echo "Setup vim"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/sbashar/script.git ~/script
ln ~/script/.vimrc ~/.vimrc
vim +PluginInstall +qall
echo "export TERM=xterm-256color" >> ~/.bashrc
source ~/.bashrc
echo done
