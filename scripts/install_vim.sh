#! /bin/bash

echo "Copy vimrc to home"
cp ../config/vimrc ~/.vimrc
echo "Install vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Install plugins in vim"
vim +PlugInstall +qall
