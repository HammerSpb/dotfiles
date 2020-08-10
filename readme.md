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

- font-fira-code
- font-hack-nerd-font
- font-open-sans
- font-lato
- font-roboto
- font-source-code-pro
- font-source-sans-pro
- font-source-serif-pro
- font-source-code-pro-for-powerline

### Applications

Development apps

- `npm` - Package manager for the JavaScript programming language
- `yarn` - Package manager that doubles down as project manager
- `awscli` - The AWS Command Line Interface (CLI) is a unified tool to manage your AWS services
- `php` - Popular general-purpose scripting language
- `mysql` - Open-source relational database management system
- `nginx` - Web server that can also be used as a reverse proxy, load balancer, mail proxy and HTTP cache
- `redis` - In-memory data structure project implementing a distributed, in-memory key–value database with optional durability

Other useful apps

- `visual-studio-code` - Code editor redefined and optimized for building and debugging modern web and cloud applications
- `iterm2` - Terminal emulator for macOS that does amazing things
- `caffeine` - Prevent your Mac from automatically going to sleep, dimming the screen or starting screen savers
- `rectangle` - Move and resize windows in macOS using keyboard shortcuts or snap areas
- `dropbox` - File hosting service 
- `mysqlworkbench` - Visual database design tool that integrates SQL development, administration, database design, creation and maintenance into a single integrated development environment for the MySQL database system
- `sequel-pro` - Fast, easy-to-use Mac database management application for working with MySQL databases
- `tableplus` - Modern, native client with intuitive GUI tools to create, access, query & edit multiple relational databases: MySQL, PostgreSQL, SQLite, Microsoft SQL Server, ...
- `insomnia` - Cross-platform GraphQL and REST client
- `transmit` - File transfer client program for macOS
- `zenmap` - Official cross-platform Nmap Security Scanner GUI
- `firefox` - Free and open-source web browser developed by the Mozilla Foundation
- `google-chrome` - Cross-platform web browser developed by Google
- `vagrant` - Vagrant is an open-source software product for building and maintaining portable virtual software development environments
- `virtualbox` - Free and open-source hosted hypervisor for x86 virtualization, developed by Oracle Corporation
- `virtualbox-extension-pack` - Binary package intended to extend the functionality of VirtualBox
- `skype` - Telecommunications application that specializes in providing video chat and voice calls between computers, tablets, mobile devices, the Xbox One console, and smartwatches over the Internet
- `slack` - proprietary business communication platform developed by American software company Slack Technologies
- `aerial` - Screen saver
- `vlc` - Free and open-source portable cross-platform media player software and streaming media server

### MacOS

    

## Thanks To...

I first got the idea for starting this project by visiting the [Github does dotfiles](https://dotfiles.github.io/) project. Both [Zach Holman](https://github.com/holman/dotfiles) and [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) were great sources of inspiration. Also, [Sourabh Bajaj](https://twitter.com/sb2nov/)'s [Mac OS X Setup Guide](http://sourabhbajaj.com/mac-setup/) proved to be invaluable. In general, I'd like to thank every single one who open-sources their dotfiles for their effort to contribute something to the open-source community. Your work means the world. :earth_africa: :heart:

## License

The MIT License. Please see [the license file](license.md) for more information.