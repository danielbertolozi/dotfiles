#!/bin/bash

# Base installs
apt-get install -y curl git zsh tmux build-essential

# Chrome
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
apt-get update
apt-get -y install google-chrome-stable

# VS Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
apt-get update
apt-get -y install code

# Vim
wget https://raw.githubusercontent.com/danielbertolozi/dotfiles/master/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# ZSH
sh -c "$(wget https://raw.githubusercontent.com/danielbertolozi/dotfiles/master/install_zsh.sh -O -)"
wget https://raw.githubusercontent.com/danielbertolozi/dotfiles/master/.zshrc

# Java
#add-apt-repository ppa:webupd8team/java -y
#apt-get update
#apt-get install -y openjdk-9-jdk

# Node
sh -c "$(wget https://deb.nodesource.com/setup_10.x -O -)"
# curl -sL https://deb.nodesource.com/setup_10.x | -E bash -
apt-get install -y nodejs

# SAP Specifics

# KDE
add-apt-repository ppa:kubuntu-ppa/backports -y
apt-get update
apt-get install -y kubuntu-desktop
