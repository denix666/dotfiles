# Load functions, aliases, exports and fzf
##########################################
for file in ~/.{functions,aliases,exports,fzf}; do
    if [[ -r "$file" ]] && [[ -f "$file" ]]; then
        source "$file"
    fi
done

# Load dircolors
[ -f ~/.dir_colors ] && eval "$(dircolors ~/.dir_colors)"

# If you want HERDR to be loaded on each terminal session automatically:
# set next variable to "true" or "false"
# #####################################################################
AUTO_LOAD_HERDR=false

if [ "${AUTO_LOAD_HERDR}" = "true" ] && command -v herdr &> /dev/null; then
    if [[ "${HERDR_ENV:-}" != "1" ]] && [[ "${TERM_PROGRAM:-}" != "zed" ]]; then
       herdr
    fi
fi
