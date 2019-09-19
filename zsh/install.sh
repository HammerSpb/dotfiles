#!/bin/sh
# Author: Roman Fedoseev (Fedoseev.Roman@gmail.com)
# Description: The following script is the part of set of .dotfiles
source $DOTFILES/scripts/utils.sh

info 'Installing zsh...'
zsh_packages=(zsh zsh-completions)
brew_install_arr ${zsh_packages[@]}

info 'Setting up zsh as the default shell'
echo $(which zsh) | sudo tee -a /etc/shells > /dev/null

info 'Make the homebrew copy of zsh your default shell'
chsh -s $(which zsh)

success 'Zsh was successfully installed!'