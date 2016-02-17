#!/bin/sh

BASH_IT_HOME=~/.bash_it

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

# validate
[ -e "$BASH_IT_HOME" ] && die "$BASH_IT_HOME already exists."

# clone bash-it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
sh ~/.bash_it/install.sh

echo "bash-it is installed."
