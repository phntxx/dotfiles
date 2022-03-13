#!/bin/bash

# Update this repository
git pull
git submodule update --init

if [ -n $1 ] && [ "$1" == "linux" ]; then
    # Install all packages, excluding macOS specifics.
    stow -v -t $HOME -R vim zsh
else
    # Install all packages
    stow -v -t $HOME -R vim zsh macos
fi
