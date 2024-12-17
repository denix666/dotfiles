# dotfiles
My dotfiles

### Installing

```bash
$ make dotfiles
```
This will copy all dotfiles from this repo to your home folder.


> [!TIP]
> If your system doesn't load .profile automatically add next line to your .bashrc file:

```bash
[[ -f ~/.profile ]] && source ~/.profile
```

> [!IMPORTANT]
> To have all aliases working correct, you should install next packages:
```
uutils-coreutils - https://uutils.github.io/
ripgrep - https://github.com/BurntSushi/ripgrep
bat - https://github.com/sharkdp/bat
btop - https://github.com/aristocratos/btop
lsd - https://github.com/lsd-rs/lsd
```
On arch based distros you can execute next command to install them from official repository:
```bash
$ pamac install uutils-coreutils lsd ripgrep bat btop
```
