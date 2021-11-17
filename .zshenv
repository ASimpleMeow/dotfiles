#!/bin/zsh


################################
# EXPORT ENVIRONMENT VARIABLES #
################################

# PATH
typeset -aU path
path+=($(du "$HOME/.local/bin" | cut -f2 | tr '\n' ' '))

# TERMINAL
export TERM='st'
export TERMINAL='st'

# BROWSER
export BROWSER='librewolf'

# XDG
export XDG_DESKTOP_DIR=$HOME/documents
export XDG_DOCUMENTS_DIR=$HOEM/documents
export XDG_DOWNLOAD_DIR=$HOME/downloads
export XDG_MUSIC_DIR=$HOEM/music
export XDG_PICTURES_DIR=$HOEM/pictures
export XDG_VIDEOS_DIR=$HOEM/videos
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache

# EDITOR
export EDITOR="nvim"
export VISUAL="nvim"

# LESS
export LESSHISTFILE=/dev/null

# ZSH
export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export HISTFILE=$XDG_CONFIG_HOME/zsh/.zhistory
export HISTSIZE=1000000
export SAVEHIST=1000000
