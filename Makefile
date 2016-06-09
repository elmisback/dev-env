.PHONY: all
all: base

.PHONY: base
base:
	ansible-playbook -i "localhost," -c local playbook.yml

.PHONY: vagrant
vagrant:
	ansible-playbook -i "localhost," -c local playbook-vagrant.yml
