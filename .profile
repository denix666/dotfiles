# Load functions, aliases, exports and fzf
##########################################
for file in ~/.{functions,aliases,exports,fzf}; do
    if [[ -r "$file" ]] && [[ -f "$file" ]]; then
        source "$file"
    fi
done


# If you want tmux to be loaded on each terminal session automatically:
# set next variable to "true" or "false"
# #####################################################################
AUTO_LOAD_TMUX=false

if [ "${AUTO_LOAD_TMUX}" = "true" ]; then
    if command -v tmux &> /dev/null && [ -z "${TMUX}" ]; then 
	tmux attach -t default || tmux new -s default 
    fi
fi
