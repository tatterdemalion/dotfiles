#!/bin/bash

ln -s ~/.vimrc $(pwd)/vim/vimrc

# configure vim
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle
vim +PluginInstall +qall
pushd ~/.vim/bundle/YouCompleteMe && python install.py --clang-completer && popd

mkdir ~/.vim/swap
mkdir ~/.vim/undo
mkdir ~/.vim/backup


