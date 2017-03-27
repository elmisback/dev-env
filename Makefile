.PHONY: all
all: clean profile base

profile:
	wget https://raw.githubusercontent.com/elmisback/dotfiles/master/home/profile

.PHONY: base
base: profile
	. ./profile && env ansible-playbook -i "localhost," -c local --private-key=~/.config/ssh/id_rsa --ask-sudo-pass playbook.yml

.PHONY: vagrant
vagrant:
	ansible-playbook -i "localhost," -c local --private-key=~/.config/ssh/id_rsa --ask-sudo-pass setup-vagrant.yml

.PHONY: debug
debug:
	ansible-playbook -i "localhost," -c local --private-key=~/.config/ssh/id_rsa -vvv --ask-sudo-pass playbook.yml

clean:
	rm -f profile
