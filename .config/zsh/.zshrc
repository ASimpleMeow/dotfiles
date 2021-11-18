# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#!/bin/zsh

###########################
# Interactive Shell Check #
###########################

[[ $- = *i* ]] || return


###############
# ZSH OPTIONS #
###############

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


#########
# ZSH Z #
#########

export ZSHZ_DATA=$XDG_CONFIG_HOME/zsh/.z
source $XDG_CONFIG_HOME/zsh/plugins/zsh-z/zsh-z.plugin.zsh


###########################
# ZSH SYNTAX HIGHLIGHTING #
###########################

source $XDG_CONFIG_HOME/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


#########
# THEME #
#########

source $XDG_CONFIG_HOME/zsh/themes/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
