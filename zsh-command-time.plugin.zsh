# Delay (in seconds) after which the command time is shown. Only integers
# allowed, set at `0` if you want to constantly show command time.
(( ! ${+COMMAND_TIME_THRESHOLD} )) && integer COMMAND_TIME_THRESHOLD=5

# Displays the exec time of the last command if set threshold was exceeded.
# Thanks to sindresorhus and its refined theme.
_ct_precmd() {
    local stop=`date +%s`
    local start=${_ct_command_timestamp:-$stop}
    local elapsed=$(( stop - start ))
    (( elapsed >= COMMAND_TIME_THRESHOLD )) && {
		print -P "%F{yellow}${elapsed}s%f"
	}
	unset _ct_command_timestamp
}

# Get the initial timestamp for cmd_exec_time.
_ct_preexec() {
    _ct_command_timestamp=`date +%s`
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd _ct_precmd
add-zsh-hook preexec _ct_preexec
