#!/bin/bash
set -e

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    echo "Bootstrapping a Linux installation"

    if hash pacman 2>/dev/null; then
        echo "You have pacman installed. Installing packages."
        sudo pacman -Sy --needed vim git irssi vim zsh
    else
        echo "I have no idea what you're running for Linux! Aborting"
        exit 1
    fi

elif [[ "$OSTYPE" == "darwin"* ]]; then
    # check for homebrew
    if hash brew 2>/dev/null; then
        echo "You already have brew."
    else
        echo "Homebrew not detected. Installing..."
        ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    fi

    brew doctor
    brew update
    brew install coreutils git gnu-tar zsh gawk gnu-sed python findutils tmux

elif [[ "$OSTYPE" == "cygwin"* ]]; then
    if hash pact 2>/dev/null; then
        echo "You are running cygwin inside babun?"
    fi
fi

# do vim stuff
echo "Setting up vim"
[[ -d $HOME/.vim ]] || mkdir -v $HOME/.vim
[[ -d $HOME/.vim/colors ]] || mkdir -v $HOME/.vim/colors
[[ -d $HOME/.vim/bundle ]] || mkdir -v $HOME/.vim/bundle

echo "Setting up Vundle"
[[ -d $HOME/.vim/bundle/Vundle.vim ]] || git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

echo "Copying and clobbering vim configurations."
cp -v vim/colors/* $HOME/.vim/colors
cp -v vim/vimrc $HOME/.vimrc

# do zsh stuff
cp -v zsh/zshrc ~/.zshrc
# get oh-my-zsh
[[ -d $HOME/.oh-my-zsh ]] || curl -L http://install.ohmyz.sh | sh

# themes themes themes
cp -v zsh/oh-my-zsh-themes/* ~/.oh-my-zsh/themes

# Run vim's vundle installer
vim +PluginInstall +qall

# Setting up tmux
cp -v tmux/tmux.conf $HOME/.tmux.conf

echo "Done!"
