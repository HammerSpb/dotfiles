# Dotfiles

Public repository for my personal dotfiles.

Based on  [Holman dotfiles](https://github.com/holman/dotfiles)

## What Is This?

This repository serves as my way to help me setup and maintain my Mac. It takes the effort out of installing everything manually. Everything which is needed to install my preffered setup of OS X is detailed in this readme. Feel free to explore, learn and copy parts for your own dotfiles. Enjoy! :smile:

## A Fresh OS X Setup

Follow these install instructions to setup a new OS X system.

1. Update OS X to the latest version with the App Store
2. Setup OS X with [these preferences](./osx/readme.md)
3. Install Xcode from the App Store, open it and accept the license agreement
4. Install OS X Command Line Tools
5. Copy public and private SSH keys to `~/.ssh`. Make sure they're set to `600`
6. Clone this repo to `~/.dotfiles`
7. Copy the env file `cp .dotfiles_env $HOME/.dotfiles_env` and change the values if needed
8. Run `install.sh` to start the installation
9. Install [Oh-My-Zsh](http://ohmyz.sh/)
10. Setup Oh-My-Zsh by running `zsh/oh-my-zsh.sh`
11. Follow the remaining [app installation instructions](./apps/readme.md)

## Thanks To...
[Holman dotfiles](https://github.com/holman/dotfiles)

Some other interesting projects :earth_africa: :heart:
1. [Github does dotfiles](https://dotfiles.github.io/)
2. [Zach Holman](https://github.com/holman/dotfiles)
3. [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
4. [Mac OS X Setup Guide](http://sourabhbajaj.com/mac-setup/)

## License

The MIT License. Please see [the license file](license.md) for more information.
