.SILENT:dotfiles
OS := $(shell command cat /etc/os-release 2>/dev/null | grep '^ID=' | tr -d '"' | awk -F'=' '{print $$2}')

default: all
install: all
all: dotfiles packages
packages: ${OS}

dotfiles:
	echo "Processing dotfiles... "
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".git"); do \
	    cp -r $$file ~/; \
	done; \

manjaro:
	echo "Installing packages for arch based OS... "
	pamac install uutils-coreutils lsd ripgrep bat btop mc tmux

rhel:
	echo "Installing packages for rhel based OS... "
	sudo yum install mc htop tmux
