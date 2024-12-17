.SILENT:dotfiles

default: dotfiles

all: dotfiles

dotfiles:
	echo -n "Processing dotfiles... "
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".gitignore" -not -name ".git"); do \
    	cp -r $$file ~/temp/; \
    done; \
    if [[ "$$?" -eq 0 ]]; then \
        echo "done!"; \
    fi
