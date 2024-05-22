# Dotfiles

Public repository for my personal dotfiles.

## What Is This?

This repository serves as my way to help me setup and maintain my Mac.

## 🚀 Get Up and Running in 5 Minutes

You can configure your Mac in 5 minutes with these steps:

1. [Optional] Update OS X to the latest version with the App Store

2. [Optional] Install Xcode from the App Store, open it and accept the license agreement

3. Install `OS X Command Line Tools`

   ```
   xcode-select --install
   ```

4. Install `Homebrew`

   ```
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

5. Install `git`, `stow`, `fzf`, `zoxide`, `tmux`

   ```
   brew install git stow fzf zoxide tmux
   ```

6. Install `JetBrains Mono Nerd font`

   ```
   brew install font-jetbrains-mono-nerd-font
   ```

7. Install `Tmux package manager`

   ```
   git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
   ```

8. Install `Alacritty`

   ```
   brew install --cask alacritty
   ```

   You might see malicious warning.
   To fix this you can use the following command:

   ```
   sudo spctl --master-disable
   ```

   Launch Alacritty again
   Followed by the following command

   ```
   sudo spctl --master-enable
   ```

9. Clone dotfiles to `~/.dotfiles`

   ```
   git clone https://github.com/HammerSpb/dotfiles .dotfiles
   ```
   ```
   cd ~/.dotfiles
   ```
   ```
   stow .
   ```

10. Configure `TMUX`
    Launch tmux
    ```
    tmux
    ```
    Press `prefix` + <kbd>I</kbd> (capital i, as in **I**nstall) to fetch the plugin.

## What you will get

### Alacritty

Configured with `catppuccin` `mocha` theme

#### Aliases

TDB

### ZSH

TDB

### TMUX

Configured with `catppuccin` `mocha` theme

#### Key bindings

`Prefix` set to <kbd>Ctrl</kbd>+<kbd>S</kbd>

`prefix` + <kbd>I</kbd> - Installs new plugins from GitHub and refreshes TMUX environment

`prefix` + <kbd>U</kbd> - Updates plugin(s)

`prefix` + <kbd>alt</kbd> + <kbd>u</kbd> - Remove/uninstall plugins not on the plugin list

`prefix` + <kbd>D</kbd> - Detach from the current session

`prefix` + <kbd>%</kbd> - Split the window into two panes horizontally

`prefix` + <kbd>"</kbd> - Split the window into two panes vertically

`prefix` + <kbd>Arrow Key</kbd> (Left, Right, Up, Down) - Move between panes

`prefix` + <kbd>X</kbd> - Close pane

`prefix` + <kbd>C</kbd> - Create a new window

`prefix` + <kbd>N</kbd> or <kbd>P</kbd> - Move to the next or previous window

`prefix` + <kbd>0</kbd> (1,2...) - Move to a specific window by number

`prefix` + <kbd>:</kbd> - Enter the command line to type commands. Tab completion is available

`prefix` + <kbd>?</kbd> - View all keybindings. Press Q to exit

`prefix` + <kbd>W</kbd> - Open a panel to navigate across windows in multiple sessions.




### Zsh

Default shell with `powerlevel9k` theme

### Git
## License

The MIT License. Please see [the license file](license.md) for more information.

