#!/usr/bin/env zsh


# NOTES:
#   $ zgen update && zgen reset
#   $ zsh-time
#   zsh -i -c exit  0.11s user 0.04s system 95% cpu 0.148 total

# load zgen
source ~/Code/opensrc/zgen/zgen.zsh

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    # zgen oh-my-zsh plugins/adb
    # zgen oh-my-zsh plugins/autojump
    # zgen oh-my-zsh plugins/bower
    zgen oh-my-zsh plugins/brew
    zgen oh-my-zsh plugins/colored-man
    # zgen oh-my-zsh plugins/grunt
    # zgen oh-my-zsh plugins/heroku
    # zgen oh-my-zsh plugins/node
    # zgen oh-my-zsh plugins/npm
    # zgen oh-my-zsh plugins/pip
    # zgen oh-my-zsh plugins/postgres
    # zgen oh-my-zsh plugins/python
    # zgen oh-my-zsh plugins/virtualenvwrapper

    # zgen oh-my-zsh plugins/command-not-found
    zgen load zsh-users/zsh-syntax-highlighting

    # completions
    # zgen load zsh-users/zsh-completions src
    # zgen load gulpjs/gulp completion/zsh

    # theme
    # zgen load rbose85/zdot my
    # zgen oh-my-zsh themes/ys
    # zgen oh-my-zsh themes/bureau

    # save all to init script
    zgen save
else
    . /Users/rbose85/Code/opensrc/zdot/my.zsh-theme

    # globals
    export ARCHFLAGS="-arch x86_64"
    export LANG=en_GB.UTF-8
    export ANDROID_HOME=/usr/local/opt/android-sdk

    # H O M E B R E W
    path=("${(@)path:#'/usr/local/bin'}")
    path=("${(@)path:#'/opt/X11/bin'}")
    path=(./node_modules/.bin /usr/local/bin /usr/local/sbin $path)

    # load libraries
    source ~/Code/opensrc/zdot/alias.zsh
    source ~/Code/opensrc/zdot/funcs.zsh
fi
