.SILENT:dotfiles

default: dotfiles

all: dotfiles

install: dotfiles

dotfiles:
	echo -n "Processing dotfiles... "
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".gitignore" -not -name ".git"); do \
		cp -r $$file ~/; \
	done; \
	if [[ "$$?" -eq 0 ]]; then \
		echo "done!"; \
	fi
