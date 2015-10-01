#!/bin/bash
set -e

# get oh-my-zsh
[[ -d $HOME/.oh-my-zsh ]] || curl -L http://install.ohmyz.sh | sh
cp -v zshrc ~/.zshrc
# themes themes themes
cp -v oh-my-zsh-themes/* ~/.oh-my-zsh/themes

echo "Done with zsh setup!"
