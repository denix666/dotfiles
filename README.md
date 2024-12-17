# dotfiles
My dotfiles

### Installing

```bash
$ make dotfiles
```
This will copy all dotfiles from this repo to your home folder.


> [!TIP]
> If your system doesn't load .profile automatycally add next block to your .bashrc file:

```bash
# Load functions, aliases and exports
for file in ~/.{functions,aliases,exports}; do
    if [[ -r "$file" ]] && [[ -f "$file" ]]; then
        source "$file"
    fi
done
```
