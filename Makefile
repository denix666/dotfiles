.SILENT:dotfiles

default: all
install: all
all: dotfiles packages

dotfiles:
	echo -n "Processing dotfiles... "
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".gitignore" -not -name ".git"); do \
		cp -r $$file ~/; \
	done; \
	if [[ "$$?" -eq 0 ]]; then \
		echo "done!"; \
	fi

packages:
	echo -n "Installing packages... "
	pamac install uutils-coreutils lsd ripgrep bat btop mc tmux
