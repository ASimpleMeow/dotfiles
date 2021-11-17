#!/bin/zsh

__fzfcmd() {
	[ -n "$TMUX_PANE" ] && { [ "$FZF_TMUX:-0" != 0 ] || [ -n "$FZF_TMUX_OPTS" ]; } &&
		echo "fzf-tmux ${FZF_TMUX_OPTS:--d${FZF_TMUX_HEIGHT:-40%}} -- " || echo "fzf"
}

fzf_history_search() {
	local selected num
	setopt localoptions noglobsubst noposixbuiltins pipefail no_aliases 2> /dev/null
	selected=( $(fc -rl 1 | perl -ne 'print if !$seen{(/^\s*[0-9]+\**\s+(.*)/, $1)}++' |
		FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} $FZF_DEFAULT_OPTS -n2..,.. --tiebreak=index --bind=ctrl-r:toggle-sort $FZF_CTRL_R_OPTS --query=${(qqq)LBUFFER} +m" $(__fzfcmd)) )
	local ret=$?
	if [ -n "$selected" ]; then
		num=$selected[1]
		if [ -n "$num" ]; then
			zle vi-fetch-history -n $num
		fi
	fi
	zle reset-prompt
	return $ret
}
