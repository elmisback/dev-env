### Idea
Develop on a VM that syncs/mounts some part of the host filesystem. Run tests
on the host.

### Setup
Vagrant syncs `../dev` to `/home/vagrant/dev` in the VM, so `../dev` needs to
exist.

For dotfiles installation, ssh agent forwarding needs to be enabled on
localhost. So `~/.ssh/config` on the host machine should include
```
host localhost
  ForwardAgent yes
```

### Guest additions version complaint
```
$ vagrant plugin install vagrant-vbguest
```
