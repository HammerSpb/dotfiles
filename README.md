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

#### Common Key bindings
<pre>
<kbd>Prefix</kbd> set to <kbd>Ctrl</kbd>+<kbd>S</kbd>
<kbd>prefix</kbd> + <kbd>I</kbd> - Installs new plugins from GitHub and refreshes TMUX environment
<kbd>prefix</kbd> + <kbd>U</kbd> - Updates plugin(s)
<kbd>prefix</kbd> + <kbd>alt</kbd> + <kbd>u</kbd> - Remove/uninstall plugins not on the plugin list
<kbd>prefix</kbd> + <kbd>:</kbd> - Enter the command line to type commands. Tab completion is available
<kbd>prefix</kbd> + <kbd>?</kbd> - View all keybindings. Press Q to exit
<kbd>prefix</kbd> + <kbd>?</kbd> - List all keybindings
</pre>

#### Sessions

<pre>
<kbd>Prefix</kbd> + <kbd>:</kbd><kbd>new</kbd>  -  new session
<kbd>Prefix</kbd> + <kbd>s</kbd> - list sessions
<kbd>Prefix</kbd> + <kbd>$</kbd> - name session
<kbd>Prefix</kbd> + <kbd>D</kbd> - Detach from the current session
<kbd>prefix</kbd> + <kbd>W</kbd> - Open a panel to navigate across windows in multiple sessions.
</pre>

#### Panes

<pre>
<kbd>Prefix</kbd> + <kbd>|</kbd> or <kbd>%</kbd> - Vertical split
<kbd>Prefix</kbd> + <kbd>-</kbd> or <kbd>"</kbd> - Horizontal split
<kbd>Prefix</kbd> + <kbd>1</kbd> - Show pane numbers
<kbd>Prefix</kbd> + <kbd>o</kbd> - Swap panes
<kbd>Prefix</kbd> + <kbd>z</kbd> - Toggle pane zoom
<kbd>Prefix</kbd> + <kbd>x</kbd> - Close pane
<kbd>Prefix</kbd> + <kbd>{</kbd> - Move the current pane left
<kbd>Prefix</kbd> + <kbd>}</kbd> - Move the current pane right
<kbd>Prefix</kbd> + <kbd>1</kbd> - Show pane numbers, when the numbers show up type the key to goto that pane
<kbd>Prefix</kbd> + <kbd> </kbd> space - toggle between layouts
<kbd>Prefix</kbd> + <kbd>+</kbd> - break pane into window (e.g. to select text by mouse to copy)
<kbd>Prefix</kbd> + <kbd>-</kbd> - restore pane from window
<kbd>Prefix</kbd> + <kbd>Arrow Key</kbd> (Left, Right, Up, Down) - Move between panes
</pre>

#### Windows

<pre>
<kbd>Prefix</kbd> + <kbd>c</kbd> - Create a new window
<kbd>Prefix</kbd> + <kbd>w</kbd> - List windows
<kbd>Prefix</kbd> + <kbd>f</kbd> - find window
<kbd>Prefix</kbd> + <kbd>,</kbd> - Name window
<kbd>Prefix</kbd> + <kbd>&</kbd> - Kill window
<kbd>Prefix</kbd> + <kbd>%</kbd> - Split the window into two panes horizontally
<kbd>Prefix</kbd> + <kbd>"</kbd> - Split the window into two panes vertically
<kbd>Prefix</kbd> + <kbd>n</kbd> or <kbd>p</kbd> - Move to the next or previous window
<kbd>Prefix</kbd> + <kbd>0</kbd> (1,2...) - Move to a specific window by number
</pre>

#### Useful commands

<pre>
<kbd>tmux ls</kbd> - List all tmux sessions
<kbd>tmux new -s name</kbd> - Create new tmux session with specific `name`
<kbd>tmux a</kbd> - (or at, or attach) Attach to tmux session
<kbd>tmux a -t name</kbd> - Attach to tmux specific session
<kbd>tmux kill-session -t name</kbd> - Kill specific tmux session
<kbd>tmux ls | grep : | cut -d. -f1 | awk '{print substr($1, 0, length($1)-1)}' | xargs kill</kbd> - Kill all tmux sessions
</pre>


### Zsh

Default shell with `powerlevel9k` theme

### Git
## License

The MIT License. Please see [the license file](license.md) for more information.

