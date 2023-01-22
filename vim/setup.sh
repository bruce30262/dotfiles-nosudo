#!/bin/bash

set -ex

mkdir -p ~/.vim/autoload

# Install vim plug
wget -O ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install vim settings
wget -O ~/.vim/.vimrc https://raw.githubusercontent.com/bruce30262/vim/main/.vimrc
set +e # disable -e because the followings will return 1 even if all plugins have installed successfully
vim -es -u ~/.vim/.vimrc -i NONE -c "PlugInstall" -c "qa"

set -e
ln -sf ~/.vim/.vimrc ~/.vimrc

set +x
echo "Done."

