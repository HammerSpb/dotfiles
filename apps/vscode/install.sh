#!/bin/sh
# Author: Roman Fedoseev (Fedoseev.Roman@gmail.com)
# Description: The following script is the part of set of .dotfiles
source $DOTFILES/scripts/utils.sh

info "Setting up VSCode..."

# 1. Settings File
# 2. Keybinding File
# 3. Launch File
# 4. Snippets Folder
# 5. VSCode Extensions & Extensions Configurations
# 6. Workspaces Folder

ln -s "$DOTFILES/apps/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
ln -s "$DOTFILES/apps/vscode/keybindings.json" "$HOME/Library/Application Support/Code/User/keybindings.json"
ln -s "$DOTFILES/apps/vscode/snippets/" "$HOME/Library/Application Support/Code/User"

vscode_extensions=(
    # burkeholland.simple-react-snippets      # Dead simple React snippets you will actually use
    # capaj.vscode-standardjs-snippets        # standardjs styled javascript snippets for visual studio code
    # chenxsan.vscode-standardjs              # Integrates JavaScript Standard Style into VS Code.
    # dbaeumer.vscode-eslint                  # Integrates ESLint JavaScript into VS Code.
    # esbenp.prettier-vscode                  # VS Code plugin for prettier/prettier
    # numso.prettier-standard-vscode          # VS Code plugin for prettier + standard
    # xabikos.JavaScriptSnippets              # Code snippets for JavaScript in ES6 syntax

    PKief.material-icon-theme               # Material Design Icons for Visual Studio Code
    chakrounanas.turbo-console-log          # Automating the process of writing meaningful log messages.
    vincaslt.highlight-matching-tag         # Highlights matching closing or opening tag
    aaron-bond.better-comments              # Improve your code commenting by annotating with alert, informational, TODOs, and more!
    amazonwebservices.aws-toolkit-vscode    # AWS Toolkit for Visual Studio Code
    angryobject.react-pure-to-class-vscode  # Convert pure react components to class components
    capaj.vscode-exports-autocomplete       # Autocompletes javascript module exports from your project
    christian-kohler.npm-intellisense       # Visual Studio Code plugin that autocompletes npm modules in import statements
    coenraads.bracket-pair-colorizer-2      # A customizable extension for colorizing matching brackets
    dakara.transformer                      # Filter, Sort, Unique, Reverse, Align, CSV, Line Selection, Text Transformations and Macros
    eamodio.gitlens                         # Supercharge the Git capabilities built into Visual Studio Code
    EQuimper.react-native-react-redux       # Code snippets for React-Native/React/Redux es6/es7 and flowtype/typescript, Storybook
    formulahendry.auto-rename-tag           # Auto rename paired HTML/XML tag
    jpoissonnier.vscode-styled-components   # Syntax highlighting for styled-components
    kumar-harsh.graphql-for-vscode          # GraphQL syntax highlighting, linting, auto-complete, and more!
    mikestead.dotenv                        # Support for dotenv file syntax
    ms-azuretools.vscode-docker             # Adds syntax highlighting, commands, hover tips, and linting for Dockerfile and docker-compose files.
    ms-python.python                        # Linting, Debugging (multi-threaded, remote), Intellisense, code formatting, refactoring, unit tests, snippets, and more.
    ms-vsliveshare.vsliveshare              # Real-time collaborative development from the comfort of your favorite tools.
    ms-vsliveshare.vsliveshare-audio        # Adds audio calling capabilities to Visual Studio Live Share
    msjsdiag.debugger-for-chrome            # Debug your JavaScript code in the Chrome browser, or any other target that supports the Chrome Debugger protocol.
    Orta.vscode-jest                        # Use Facebook's Jest With Pleasure.
    redhat.vscode-yaml                      # YAML Language Support by Red Hat, with built-in Kubernetes and Kedge syntax support
    ritwickdey.LiveServer                   # Launch a development local Server with live reload feature for static & dynamic pages
    steoates.autoimport                     # Automatically finds, parses and provides code actions and code completion for all available imports. Works with Typescript and TSX
    Tyriar.sort-lines                       # Sorts lines of text
    wix.vscode-import-cost                  # Display import/require package size in the editor
    andys8.jest-snippets
    bpruitt-goddard.mermaid-markdown-syntax-highlighting
    capaj.vscode-exports-autocomplete
    dbaeumer.vscode-eslint
    EditorConfig.EditorConfig
    esbenp.prettier-vscode
    joelday.docthis
    streetsidesoftware.code-spell-checker
    VisualStudioExptTeam.vscodeintellicode
    vstirbu.vscode-mermaid-preview
)

info "Installing VSCode Extensions" 
for i in ${vscode_extensions[@]}; do
  info "Installing ${i}"
  code --install-extension $i
done

# To get a list of current extensions run: code --list-extensions | xargs -L 1 echo code --install-extension

success 'VSCode was successfully installed!'
