# Dotfiles

Public repository for my personal dotfiles.

## What Is This?

This repository serves as my way to help me setup and maintain my Mac. It takes the effort out of installing everything manually. Everything which is needed to install my preffered setup of OS X is detailed in this readme. Feel free to explore, learn and copy parts for your own dotfiles. Enjoy! :smile:

## 🚀 Get Up and Running in 5 Minutes

You can configure your Mac in 5 minutes with these steps:

1. [Optional] Update OS X to the latest version with the App Store

2. [Optional] Install Xcode from the App Store, open it and accept the license agreement

3. Install OS X Command Line Tools

    ```
    xcode-select --install
    ```

4. Install dotfiles to `~/.dotfiles`
    ```
    git clone https://github.com/HammerSpb/dotfiles
    cd ~/.dotfiles
    scripts/bootstrap
    ```

## What you will get

### Zsh

Default shell with `powerlevel9k` theme

You will get some useful aliases:

- `reloadcli` - "source $HOME/.zshrc"

- `reloaddns` - "dscacheutil -flushcache && sudo killall -HUP mDNSResponder"

- `weather` - "curl -4 http://wttr.in"

- `dotfiles` - "cd $DOTFILES"

- `library` - "cd $LIBRARY"

### Oh-My-Zsh

Community-driven framework for managing your zsh configuration

### Node

### Git

Aliases:

- `co` - checkout

- `br` - branch

- `st` - status

- `ci` - commit

- `lg` - log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative

- `hist` - log --pretty=format:'%Cred%h %Cgreen(%ad)%Creset - %s%d %C(bold blue)[%an]%Creset' --graph --date=short
[

### Fonts

### Applications

### MacOS

    

## Thanks To...

I first got the idea for starting this project by visiting the [Github does dotfiles](https://dotfiles.github.io/) project. Both [Zach Holman](https://github.com/holman/dotfiles) and [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) were great sources of inspiration. Also, [Sourabh Bajaj](https://twitter.com/sb2nov/)'s [Mac OS X Setup Guide](http://sourabhbajaj.com/mac-setup/) proved to be invaluable. In general, I'd like to thank every single one who open-sources their dotfiles for their effort to contribute something to the open-source community. Your work means the world. :earth_africa: :heart:

## License

The MIT License. Please see [the license file](license.md) for more information.