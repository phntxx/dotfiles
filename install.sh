#!/bin/bash

# Update this repository
git pull
git submodule update --init

# Install all packages
stow -v -t $HOME -R */
