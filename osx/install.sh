#!/bin/sh
# Author: Roman Fedoseev (Fedoseev.Roman@gmail.com)
# Description: The following script is the part of set of .dotfiles
source ./scripts/utils.sh

info 'Setting up your Mac...'
# user 'Did you update macOS to the latest version from the App Store?'
# select yn in "Yes" "No"; do
#     case $yn in
#         Yes ) break;;
#         No ) success 'Update your macOS to the latest version and then try again.' && exit;;
#     esac
# done

# info 'Do you want to update your Mac apps to the latest versions?'
# select yn in "Yes" "No"; do
#     case $yn in
#         Yes ) info echo "› sudo softwareupdate -i -a" && sudo softwareupdate -i -a;;
#         No ) break;;
#     esac
# done

# info 'Did you install Xcode from the App Store?'
# select yn in "Yes" "No"; do
#     case $yn in
#         Yes ) break;;
#         No ) success 'Install Xcode from the App Store, open it and accept the license agreement!' && exit;;
#     esac
# done

info 'Installing Xcode command line tools...'
# xcode-select --install

# Host name: sudo scutil --set HostName name-you-want # You could change also ComputerName, LocalHostName, HostName

info 'Installing Homebrew...'
# Check for Homebrew
if test ! $(which brew); then
    # Install the correct homebrew for each OS type
    if test "$(uname)" = "Darwin"; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    elif test "$(expr substr $(uname -s) 1 5)" = "Linux"; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
    fi

fi

info 'Updating Homebrew...'
brew update && brew upgrade
# When install or reinstall a formula, homebrew automatically update itself before installing the formula.
# This will disable auto update
export HOMEBREW_NO_AUTO_UPDATE=1
success 'Homebrew was successfully installed!'

# info 'Installing zsh'
# zsh_packages=(zsh zsh-completions)
# brew_install_arr ${zsh_packages[@]}

# info 'Setting up zsh as the default shell'
# # sudo echo /usr/local/bin/zsh >> /etc/shells
# # chsh -s $(which zsh)

info 'Installing GNU core utilities (those that come with OS X are outdated)...'
brew_install coreutils

info 'Installing GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed...'
brew_install findutils

info 'Installing Bash...'
brew_install bash

info 'Installing more recent versions of some OS X tools...'
brew tap homebrew/cask
# brew tap homebrew/bundle
brew tap homebrew/cask-versions
brew_cask_install osxfuse

# Install Binaries
binaries=(
    ntfs-3g
    grep
    trash
    wget
    tree
    hub
    git
)
brew_install_arr ${binaries[@]}

# Set preferences
# source $DOTFILES/osx/preferences.sh