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
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi

    brew doctor
    brew update
    brew install coreutils git gnu-tar zsh gawk gnu-sed python findutils tmux jq the_silver_searcher

elif [[ "$OSTYPE" == "cygwin"* ]]; then
    if hash pact 2>/dev/null; then
        echo "You are running cygwin inside babun?"
    fi
fi
