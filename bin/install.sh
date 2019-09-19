#!/bin/sh
# Author: Roman Fedoseev (Fedoseev.Roman@gmail.com)
# Description: The following script is the part of set of .dotfiles
source $DOTFILES/scripts/utils.sh

echo "Installing commands..."

# Symlink this directory to home
link_file $DOTFILES/bin $HOME/.bin