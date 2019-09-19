# Author: Roman Fedoseev (Fedoseev.Roman@gmail.com)
# Description: The following script is the part of set of .dotfiles

function info() {
    printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

function user() {
    printf "\r  [ \033[0;33m??\033[0m ] $1\n"
}

function success() {
    printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

function fail() {
    printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
    echo ''
    exit
}

function brew_install() {
    info "Installing ${1}"
    brew info "${1}" | grep --quiet 'Not installed' && brew install "${1}"
}

function brew_install_arr(){
    arr=("$@")
    for i in "${arr[@]}"; do
        brew_install $i
    done
}

function brew_cask_install() {
    info "Installing ${1}"
    brew cask info "$1" | grep --quiet 'Not installed' && brew cask install "$1"
}

function brew_cask_install_arr(){
    arr=("$@")
    for i in "${arr[@]}"; do
        brew_cask_install $i
    done
}

function brew_cask_install_to_applications() {
    info "Installing ${1}"
    brew cask info "$1" | grep --quiet 'Not installed' && brew cask install --appdir="/Applications" "$1"
}

function brew_cask_install_arr_to_applications(){
    arr=("$@")
    for i in "${arr[@]}"; do
        brew_cask_install_to_applications $i
    done
}

link_file () {
  local src=$1 dst=$2

  local overwrite= backup= skip=
  local action=

  if [ -f "$dst" -o -d "$dst" -o -L "$dst" ]
  then

    if [ "$overwrite_all" == "false" ] && [ "$backup_all" == "false" ] && [ "$skip_all" == "false" ]
    then

      local currentSrc="$(readlink $dst)"

      if [ "$currentSrc" == "$src" ]
      then

        skip=true;

      else

        user "File already exists: $dst ($(basename "$src")), what do you want to do?\n\
        [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all?"
        read -n 1 action

        case "$action" in
          o )
            overwrite=true;;
          O )
            overwrite_all=true;;
          b )
            backup=true;;
          B )
            backup_all=true;;
          s )
            skip=true;;
          S )
            skip_all=true;;
          * )
            ;;
        esac

      fi

    fi

    overwrite=${overwrite:-$overwrite_all}
    backup=${backup:-$backup_all}
    skip=${skip:-$skip_all}

    if [ "$overwrite" == "true" ]
    then
      rm -rf "$dst"
      success "removed $dst"
    fi

    if [ "$backup" == "true" ]
    then
      mv "$dst" "${dst}.backup"
      success "moved $dst to ${dst}.backup"
    fi

    if [ "$skip" == "true" ]
    then
      success "skipped $src"
    fi
  fi

  if [ "$skip" != "true" ]  # "false" or empty
  then
    ln -s "$1" "$2"
    success "linked $1 to $2"
  fi
}