#!/bin/bash
set -e

# do vim stuff
echo "Setting up vim"
[[ -d $HOME/.vim ]] || mkdir -v $HOME/.vim
[[ -d $HOME/.vim/colors ]] || mkdir -v $HOME/.vim/colors
[[ -d $HOME/.vim/bundle ]] || mkdir -v $HOME/.vim/bundle

echo "Setting up Vundle"
[[ -d $HOME/.vim/bundle/Vundle.vim ]] || git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

echo "Copying and clobbering vim configurations."
cp -v colors/* $HOME/.vim/colors
cp -v vimrc $HOME/.vimrc

# Run vim's vundle installer
vim +PluginInstall +qall

echo "Done!"
