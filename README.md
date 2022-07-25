# dotfiles

This repository contains everything I use to make my shell better.

# usage

This repository uses [dotbot](https://github.com/anishathalye/dotbot) for setup and linking.
That way, system-wide programs like `stow` are not required and resources can easily be linked based on the OS this repository is being run on (e.g. `.inputrc` is macOS-specific).

To use this repository, follow these steps:

```sh
# Clone and enter the repository, initialize all submodules
git clone https://github.com/phntxx/dotfiles && cd -

# Run initializer
./init

# Run installer with plugin flags
./install \
  --plugin-dir dotbot-plugins/ifplatform \
  --plugin-dir dotbot-plugins/omnipkg
```
