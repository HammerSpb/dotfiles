#!/bin/sh
# Author: Roman Fedoseev (Fedoseev.Roman@gmail.com)
# Description: The following script is the part of set of .dotfiles
source $DOTFILES/scripts/utils.sh
export ZSH=$HOME/.oh-my-zsh

if [ ! -d $ZSH ]; then
  info 'Installing Oh-My-Zsh'
  git clone https://github.com/robbyrussell/oh-my-zsh.git $ZSH
  success 'Oh-My-Zsh was successfully installed!'
  
  info 'Installing PowerLevel9k Theme for Oh-My-Zsh'
  git clone https://github.com/bhilburn/powerlevel9k.git $ZSH/custom/themes/powerlevel9k
  success 'PowerLevel9k was successfully installed!'
fi