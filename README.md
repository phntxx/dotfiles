# dotfiles
✨ _for a prettier shell and an easier life_ ✨

This repository contains my configuration files (dotfiles).

# About
This repository configures the following programs:

- [zsh](https://www.zsh.org/), my shell of choice: `sudo pacman -S zsh`
- [git](https://git-scm.com/), a version control program: `sudo pacman -S git`
- [eza](https://github.com/eza-community/eza), a modern replacement for `ls`: `sudo pacman -S eza`

    ‼️ I re-aliased `ls` to `eza`, so if `eza` is not installed, you won't be able to list directories unless you specify the path to your `ls` binary.
- [yazi](https://github.com/sxyazi/yazi), a graphical file browser: `sudo pacman -S yazi`
- [helix](https://github.com/helix-editor/helix), a terminal-based text editor: `sudo pacman -S helix`
- [vscode](https://code.visualstudio.com/), my graphical text editor of choice: `sudo pacman -S code`

    ‼️ I don't use the official Microsoft binaries for vscode. Instead, I use the OSS version available through pacman. This has the effect that configuration for me is stored at `~/.config/Code - OSS` instead of `~/.config/Code`.
- [starship](https://starship.rs), a customizable shell written in rust: `sudo pacman -S starship`
- [fastfetch](https://github.com/fastfetch-cli/fastfetch), a modern neofetch replacement: `sudo pacman -S fastfetch`

# Installation
Installation of these dotfiles is handled by [dotbot](https://github.com/anishathalye/dotbot).

In order to install, all you need to do is:
```sh
git clone httccps://github.com/phntxx/dotfiles
```

I use [Antigen](https://github.com/zsh-users/antigen) for zsh plugin management, so upon first starting with these dotfiles installed, these will be downloaded, which can take a while.

# Contributing
As these dotfiles are essentially just my personal preferences, both in application choice and configuration, contributions to this repository is futile in my opinion. Therefore, I suggest you fork this repository instead.