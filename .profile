# Add next block to your .bashrc file:

# Load aliases, exports and functions
for file in ~/.{aliases,exports,functions}; do
    if [[ -r "$file" ]] && [[ -f "$file" ]]; then
        source "$file"
    fi
done
