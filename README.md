# dotfiles

## About

At the moment, this repository is a hodgepodge of some of my dotfiles that I
gathered over the past couple of weeks/months of messing around with various
Linux and macOS systems.

As a baseline, they can be differentiated by the following criteria:

- Most of my servers are running [Arch Linux][arch-linux] and are running `bash` as
  the default shell. Thus, `.bashrc` is more commonly used among [Arch Linux][arch-linux]
  than anything else.
- My desktop computers run [macOS][macos], which uses `zsh` by default. Thus, my `.zshrc`
  is most commonly used under [macOS][macos]. This also means that they might not be 100%
  compatible with [Arch Linux][arch-linux].

## Further notes

- My `zsh` environment requires [oh-my-zsh][oh-my-zsh] and [powerlevel10k][powerlevel10k].
  I've included [oh-my-zsh][oh-my-zsh] as a submodule (as per the official installation
  instructions), but [powerlevel10k][powerlevel10k] will have to be installed manually.
- [oh-my-zsh][oh-my-zsh] recommends that the `.aliases`-file is not sourced via `.zshrc`, but
  instead placed under `~/.oh-my-zsh/custom/`. As a result, the following should be executed when
  using [oh-my-zsh][oh-my-zsh]:
  
  ```sh
  mv .aliases ~/.oh-my-zsh/custom/aliases.zsh
  ```

## `vim` customization

My `vim` customization consists of two packages:

1. [lightline.vim][lightline-vim]: This is included as a submodule as per the official installation instructions.
2. [onedark.vim][onedark-vim]: This has been added to this repository using the
   following commands:

   ```sh
   curl -fLo ~/.vim/colors/onedark.vim --create-dirs \
   https://raw.githubusercontent.com/joshdick/onedark.vim/main/colors/onedark.vim

   curl -fLo ~/.vim/autoload/onedark.vim --create-dirs \
   https://raw.githubusercontent.com/joshdick/onedark.vim/main/autoload/onedark.vim

   curl -fLo ~/.vim/autoload/lightline/colorscheme/onedark.vim --create-dirs \
   https://raw.githubusercontent.com/joshdick/onedark.vim/main/autoload/lightline/colorscheme/onedark.vim
   ```

[arch-linux]: https://archlinux.org
[macos]: https://www.apple.com/macos/
[oh-my-zsh]: https://github.com/ohmyzsh/ohmyzsh
[powerlevel10k]: https://github.com/romkatv/powerlevel10k
[lightline-vim]: https://github.com/itchyny/lightline.vim
[onedark-vim]: https://github.com/joshdick/onedark.vim
