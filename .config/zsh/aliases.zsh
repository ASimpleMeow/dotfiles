#!/bin/zsh

##########
# System #
##########

alias poweroff='sudo poweroff'
alias reboot='sudo reboot'
alias open='xdg-open'
alias config='/usr/bin/git --git-dir=$HOME/dev/dotfiles/ --work-tree=$HOME'

######
# ls #
######

alias ls='ls --color=auto'
alias ll='ls -lahF'

########
# grep #
########

alias grep='grep --color=auto'

##########
# Pacman #
##########

alias xi='sudo pacman -S'
alias xq='sudo pacman -Ss'
alias xr='sudo pacman -Rs'

#######
# Git #
#######

alias gco='git checkout'
alias gc='git commit'
alias gl='git log'
alias gs='git status'
alias gb='git branch'

##########
# NeoVim #
##########

alias vi='nvim'
alias svim='sudo nvim'

###############
# Directories #
###############

alias r="$HOME/repos"
alias p="$HOME/pictures"
alias d="$HOME/downloads"
alias m="$HOME/music"
alias v="$HOME/videos"
alias c="$XDG_CONFIG_HOME"
alias s="$HOME/.local/bin"
