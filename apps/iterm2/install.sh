#!/bin/sh
# Author: Roman Fedoseev (Fedoseev.Roman@gmail.com)
# Description: The following script is the part of set of .dotfiles
source $DOTFILES/scripts/utils.sh

info "Setting up iTerm2..."

# Symlink preferences

# Specify the preferences directory
sudo defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$DOTFILES/apps/iterm2"
# Tell iTerm2 to use the custom preferences in the directory
sudo defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

success 'iTerm2 was successfully installed!'
