!#/bin/bash

git submodule update --init
stow -v -t $HOME -R */
