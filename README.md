# dotfiles
My dotfiles. They was tested on arch and rhel based distros.

### To install dotfiles, packages and include them into .bashrc:

```bash
$ make all
```
This will copy all dotfiles from this repo to your home folder, install all needed packages and include they in your .basrc file.


> [!TIP]
> You always can enable or disable that profile with next command:

```bash
$ make enabled
```
or
```bash
$ make disabled
```

> [!TIP]
> To install only dotfiles
```bash
$ make dotfiles
```
This will only copy all dotfiles from this repo to your home folder.

> [!IMPORTANT]
> To have all aliases working correct on arch based distro, you should install next packages as dependencies:
```
uutils-coreutils - https://uutils.github.io/
ripgrep - https://github.com/BurntSushi/ripgrep
bat - https://github.com/sharkdp/bat
btop - https://github.com/aristocratos/btop
lsd - https://github.com/lsd-rs/lsd
```
To install only the packages:
```bash
$ make packages
```
