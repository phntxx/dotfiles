dotfiles

- .bashrc is the default for my servers
- .zshrc is from a mac, might not work under linux
- .zshrc requires [oh-my-zsh][oh-my-zsh] and [powerlevel10k][powerlevel10k]
- [oh-my-zsh][oh-my-zsh] included as submodule, [powerlevel10k][powerlevel10k] needs to be installed manually

- [vim-plug][vim-plug]

```
mv .aliases ~/.oh-my-zsh/custom/aliases.zsh
```

```sh
curl -fLo ~/.vim/colors/onedark.vim --create-dirs https://raw.githubusercontent.com/joshdick/onedark.vim/main/colors/onedark.vim

curl -fLo ~/.vim/autoload/onedark.vim --create-dirs https://raw.githubusercontent.com/joshdick/onedark.vim/main/autoload/onedark.vim

curl -fLo ~/.vim/autoload/lightline/colorscheme/onedark.vim --create-dirs https://raw.githubusercontent.com/joshdick/onedark.vim/main/autoload/lightline/colorscheme/onedark.vim
```

[oh-my-zsh]: https://github.com/ohmyzsh/ohmyzsh

[powerlevel10k]:
[]
