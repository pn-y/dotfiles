all:
	ansible-playbook all.yml -i local -vv -K

install_addons:
	ansible-playbook addons.yml -i local -vv -K --tags $(TAGS)

vim_configure:
	ansible-playbook vim.yml -i local -vvv -e curdir=$(CURDIR) -K

TAGS := all

install_dotfiles:
	ansible-playbook dotfiles.yml -i local -vv

