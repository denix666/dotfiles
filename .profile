# Load functions, aliases and exports
for file in ~/.{functions,aliases,exports}; do
    if [[ -r "$file" ]] && [[ -f "$file" ]]; then
        source "$file"
    fi
done
