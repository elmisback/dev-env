.PHONY: all
all: base

.PHONY: base
base:
	ansible-playbook -i "localhost," -c local --ask-sudo-pass playbook.yml

.PHONY: vagrant
vagrant:
	ansible-playbook -i "localhost," -c local --ask-sudo-pass setup-vagrant.yml

.PHONY: debug
debug:
	ansible-playbook -i "localhost," -c local -vvv --ask-sudo-pass playbook.yml
