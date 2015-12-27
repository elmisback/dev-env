### Idea
Develop on a VM that syncs/mounts some part of the host filesystem. Run tests
on the host.

### Setup
Vagrant syncs `../dev` to `/home/vagrant/dev` in the VM, so `../dev` needs to
exist.

Follow the instructions
[here](https://gist.github.com/brbsix/b70413dec907906ef659) to resolve the Ubuntu
Wily box's network setup issues. Restart the system afterward.
