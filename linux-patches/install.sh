#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

yesNo () {
  local validInput=0
  while [ $validInput -ne "1" ]; do

    read -p "$1 [Y/N] " entry

    if [ $entry == "y" ] || [ $entry == "Y" ]; then
      validInput=1
      eval $2=1

    elif [ $entry == "n" ] || [ $entry == "N" ]; then
      validInput=1
      eval $2=0
    else
      echo "Invalid input, retrying."
    fi
  done
}

install-icons () {
  git clone https://github.com/vinceliuice/whitesur-icon-theme.git
  ./whitesur-icon-theme/install.sh --theme all --alternative --black
}

install-gtk () {
  git clone https://github.com/vinceliuice/whitesur-gtk-theme.git
  ./whitesur-gtk-theme/install.sh --monterey --theme all --icon arch
}

install-cursors () {
  git clone https://github.com/vinceliuice/whitesur-cursors.git
  ./whitesur-cursors/install.sh
}

install-matter () {
  git clone https://github.com/mateosss/matter.git
  ./matter/matter.py \
    --icons arch microsoft-windows-classic cog \
    --fontfile font.ttf \
    --fontname ComicCodeLigatures Nerd Font Regular \
    --fontsize 25 \
    --background 222f3e \
    --foreground 576574 \
    --highlight c8d6e5 \
    --iconcolor c8d6e5 \
}

if [ -x "$(command -v gnome-shell)" ]; then

  yesNo "GNOME is installed. Would you like to install WhiteSur?" res

  if [ $res -eq "1" ]; then
    echo "Installing whitesur icons..."
    install-icons

    echo "Installing whitesur gtk theme..."
    install-gtk

    echo "Installing whitesur cursors..."
    install-cursors
  fi
fi

if [ -x "$(command -v grub-mkconfig)" ]; then

  yesNo "GRUB is installed. Would you like to install Matter?" res

  if [ $res -eq "1" ]; then
    echo "Installing matter..."
    install-matter
  fi
fi