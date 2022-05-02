#!/bin/sh

DEPENDENCIES=("starship" "lsd" "stow")

update_repository() {
  echo "Updating this repository."
  git pull
  echo "Updating submodules."
  git submodule update --init
}

check_dependencies() {
  echo "Checking for dependencies."

  everything_installed=true
  for command in ${DEPENDENCIES[@]}; do
    if ! command -v $command &> /dev/null; then
      echo "[ERROR] Dependency $command could not be found."
      everything_installed=false
    fi
  done

  if ! [ $everything_installed ]; then
    echo "Some of the dependencies are not installed. Exiting."
    exit 1
  fi
}

install_packages() {
  echo "Installing dotfiles."
  stow -v -t $HOME -R */
}

update_repository
check_dependencies
install_packages