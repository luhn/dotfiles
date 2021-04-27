# Dotfiles

These are the dotfiles I use to configure my M1 Macbook.

## Prereqs

Install Homebrew:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install the following Homebrew packages:  git, tmux, reattach-to-user-namespace

```sh
brew install git tmux reattach-to-user-namespace
```

Install Vundle (vim package manager) and Antigen (zsh package manager):

```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/zsh-users/antigen.git ~/.antigen-src
```

## Linking

Run `./link.sh` to link dotfiles to the appropriate locations.
**Warning**:  This will delete existing dotfiles.

## Finalize

Open vim and run `:PluginInstall`.

Import `profile.terminal` into Terminal and set it as the default profile.
