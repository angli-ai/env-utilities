#!/bin/bash

if [ ! -d "~/.vim/bundle/Vundle.vim" ]; then
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
mv ~/.vimrc ~/.vimrc-backup
cp ./.vimrc ~/.vimrc

vim +PluginInstall +qall
