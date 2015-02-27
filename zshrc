#!/usr/bin/env zsh

source ~/Dropbox/config/zsh-brew/alias.zsh
source ~/Dropbox/config/zsh-brew/funcs.zsh
source ~/Dropbox/config/zsh-brew/envas.zsh


# environment variables
export ZSH=~/Code/opensrc/oh-my-zsh
ensure-folder $ZSH


# load zgen
ensure-file ~/Code/opensrc/zgen/zgen.zsh
source ~/Code/opensrc/zgen/zgen.zsh

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/adb
    zgen oh-my-zsh plugins/ant
    zgen oh-my-zsh plugins/atom
    zgen oh-my-zsh plugins/autojump
    zgen oh-my-zsh plugins/bower
    zgen oh-my-zsh plugins/brew
    zgen oh-my-zsh plugins/cabal
    zgen oh-my-zsh plugins/chucknorris
    zgen oh-my-zsh plugins/colorize
    zgen oh-my-zsh plugins/django
    zgen oh-my-zsh plugins/gem
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/gradle
    zgen oh-my-zsh plugins/grunt
    zgen oh-my-zsh plugins/heroku
    zgen oh-my-zsh plugins/history
    zgen oh-my-zsh plugins/node
    zgen oh-my-zsh plugins/npm
    zgen oh-my-zsh plugins/nvm
    zgen oh-my-zsh plugins/pip
    zgen oh-my-zsh plugins/postgres
    zgen oh-my-zsh plugins/python
    zgen oh-my-zsh plugins/virtualenvwrapper
    zgen oh-my-zsh plugins/history-substring-search
    zgen oh-my-zsh plugins/colored-man

    # zgen oh-my-zsh plugins/command-not-found
    zgen load zsh-users/zsh-syntax-highlighting

    # completions
    zgen load zsh-users/zsh-completions src
    zgen load gulpjs/gulp completion/zsh

    # theme
    zgen oh-my-zsh themes/ys

    # save all to init script
    zgen save
fi
