#!/bin/sh
# Author: Roman Fedoseev (Fedoseev.Roman@gmail.com)
# Description: The following script is the part of set of .dotfiles
source $DOTFILES/scripts/utils.sh

info "Installing fonts..."

# Installs fonts onto the system
brew tap homebrew/cask-fonts

fonts=(
    font-fira-code
    font-hack-nerd-font
    # font-droidsansmono-nerd-font-mono
    # font-droidsansmono-nerd-font
    font-open-sans
    font-lato
    font-roboto
    font-source-code-pro
    font-source-sans-pro
    font-source-serif-pro
    font-source-code-pro-for-powerline
)
brew_cask_install_arr ${fonts[@]}

success 'Fonts was successfully installed!'