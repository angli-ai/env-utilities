#!/bin/bash

if [ ! -d "~/.vim/bundle/Vundle.vim" ]; then
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [ ! -d "~/.vim/bundle/vim-colors-solarized" ]; then
	git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
fi

if [ ! -d "~/.vim/bundle/jedi-vim" ]; then
	git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim
fi

mv ~/.vimrc ~/.vimrc-backup
cp ./vimrc ~/.vimrc

vim +PluginInstall +qall

