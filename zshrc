#!/usr/bin/env zsh


# NOTES:
#   $ zgen update && zgen reset
#   $ zsh-time
#   zsh -i -c exit  0.17s user 0.13s system 112% cpu 0.269 total
#   zsh -i -c exit  0.22s user 0.08s system 94% cpu 0.315 total


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
    # zgen oh-my-zsh plugins/brew
    zgen oh-my-zsh plugins/colored-man
    # zgen oh-my-zsh plugins/grunt
    # zgen oh-my-zsh plugins/heroku
    # zgen oh-my-zsh plugins/node
    # zgen oh-my-zsh plugins/npm
    # zgen oh-my-zsh plugins/nvm
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
    zgen load Pascal/zdot my

    # save all to init script
    zgen save
else
    # H O M E B R E W
    path=("${(@)path:#'/usr/local/bin'}")
    path=("${(@)path:#'/opt/X11/bin'}")
    path=(/usr/local/bin /usr/local/sbin $path)

    # globals
    export ARCHFLAGS="-arch x86_64"
    export LANG=en_GB.UTF-8

    # A N D R O I D
    export ANDROID_HOME=/usr/local/opt/android-sdk

    # N O D E V E R S I O N M A N A G E R
    export NVM_DIR=~/.nvm
    ulimit -n 2560 # https://github.com/gruntjs/grunt-contrib-copy/issues/21
    path=(./node_modules/.bin $path)

    # load libraries
    source ~/Code/opensrc/zdot/alias.zsh
    source ~/Code/opensrc/zdot/funcs.zsh
    source ~/Code/opensrc/zdot/devel.zsh
fi
