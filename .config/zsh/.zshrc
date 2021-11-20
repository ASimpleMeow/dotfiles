#!/bin/zsh

###########################
# Interactive Shell Check #
###########################

[[ $- = *i* ]] || return


###############
# ZSH OPTIONS #
###############

export GPG_TTY=$TTY

# NAVIGATION OPTIONS #
setopt AUTO_CD 		#Go to directory without cd command
setopt NO_BEEP		#Stop shell beep
setopt CORRECT		#Spelling correction


# HISTORY OPTIONS #
setopt HIST_IGNORE_SPACE 	#Do not record event starting with a space
setopt HIST_VERIFY		#Do not execute immediately upon history expansion


###########
# ALIASES #
###########

source $XDG_CONFIG_HOME/zsh/aliases.zsh


###########
# SCRIPTS #
###########

source $XDG_CONFIG_HOME/zsh/scripts.zsh


#########
# THEME #
#########

source $XDG_CONFIG_HOME/zsh/themes/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh


##########
# PROMPT #
##########
autoload -Uz colors; colors
fpath=($XDG_CONFIG_HOME/zsh/prompt $fpath)
autoload -Uz prompt_setup; prompt_setup


###############
# ZSH VI MODE #
###############

source $XDG_CONFIG_HOME/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh


###############
# COMPLETIONS #
###############

fpath=($XDG_CONFIG_HOME/zsh/plugins/zsh-completions/src $fpath)
autoload -U compinit; compinit


#########
# ZSH Z #
#########

export ZSHZ_DATA=$XDG_CONFIG_HOME/zsh/.z
source $XDG_CONFIG_HOME/zsh/plugins/zsh-z/zsh-z.plugin.zsh


###########################
# ZSH SYNTAX HIGHLIGHTING #
###########################

source $XDG_CONFIG_HOME/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


######################
# FZF HISTORY SEARCH #
######################

autoload fzf_history_search
zle -N fzf_history_search
bindkey '^r' fzf_history_search

autoload up-line-or-beginning-search
autoload down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search
