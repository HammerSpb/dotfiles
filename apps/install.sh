#!/bin/sh
# Author: Roman Fedoseev (Fedoseev.Roman@gmail.com)
# Description: The following script is the part of set of .dotfiles
source $DOTFILES/scripts/utils.sh

info "Setting up apps..."

# Install OS X Applications
apps=(
    visual-studio-code
    iterm2
    # Caffeine is a tiny program that puts an icon in the right side of your menu bar.
    # Click it to prevent your Mac from automatically going to sleep,
    # dimming the screen or starting screen savers
    caffeine
    rectangle
    # spectacle replaced by rectangle
    # docker
    dropbox
    # Database IDEs
    mysqlworkbench
    sequel-pro
    tableplus
    #
    # Insomnia is a cross-platform GraphQL and REST client, developers trust Insomnia
    insomnia
    transmit
    # Zenmap - Official cross-platform Nmap Security Scanner GUI
    zenmap
    # Browesers
    firefox
    google-chrome
    # Virtualisation
    vagrant
    virtualbox
    virtualbox-extension-pack
    # Communication
    skype
    slack
    # Other
    aerial # Screen saver
    vlc
)

info "Installing apps to /Applications..."
brew_cask_install_arr_to_applications ${apps[@]}

dev_apps=(
    npm
    yarn
    awscli
    php
    mysql
    nginx
    redis
)

info "Installing dev apps..."
brew_install_arr ${dev_apps[@]}

info "Installing nvm"

# Get latest tag from github.com/nvm-sh/nvm
NVM_LATEST=$(git ls-remote --tags --sort="v:refname" git://github.com/nvm-sh/nvm.git | tail -n1 | sed 's/.*\///; s/\^{}//')
curl -o- "https://raw.githubusercontent.com/creationix/nvm/${NVM_LATEST}/install.sh" | zsh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

info "Installing latest node"
nvm install node


# For chrome install next extensions
# 
# The Great Suspender
# Grammarly
# Clip to Evernote
# LastPass
# React Developer Tools
# uBlock Origin
# AdBlock
# Apollo Client Developer Tools
# OmniBug
# OneTab
# LightHouse