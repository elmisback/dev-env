.PHONY: all
all: base

.PHONY: base
base:
	ansible-playbook -i "localhost," -c local --private-key=~/.config/ssh/id_rsa --ask-sudo-pass playbook.yml

.PHONY: vagrant
vagrant:
	ansible-playbook -i "localhost," -c local --private-key=~/.config/ssh/id_rsa --ask-sudo-pass setup-vagrant.yml

.PHONY: debug
debug:
	ansible-playbook -i "localhost," -c local --private-key=~/.config/ssh/id_rsa -vvv --ask-sudo-pass playbook.yml
