.SILENT:dotfiles
.SILENT:disabled
.SILENT:enabled

OS := $(shell command cat /etc/os-release 2>/dev/null | grep '^ID=' | tr -d '"' | awk -F'=' '{print $$2}')

default: all
install: all
all: dotfiles packages enabled
packages: ${OS}

dotfiles:
	echo "Processing dotfiles... "
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".git"); do \
	    cp -r $$file ~/; \
	done; \

manjaro: arch_based
arch: arch_based
rhel: rhel_based
centos: rhel_based

arch_based:
	echo "Installing packages for arch based OS... "
	sudo pacman -S uutils-coreutils lsd ripgrep bat btop mc tmux

rhel_based:
	echo "Installing packages for rhel based OS... "
	sudo yum install mc htop tmux

enabled:
	echo "Enabling profile..."
	bash -c "cat ~/.bashrc | grep '\.profile' && echo 'Already enabled' || echo '[[ -f ~/.profile ]] && source ~/.profile' >> ~/.bashrc"

disabled:
	echo "Disabling profile..."
	bash -c "sed -i '/[[ -f ~\/.profile ]] && source ~\/.profile/d' ~/.bashrc"
