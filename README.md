# Setup
## Vagrant VM
Make sure you like the synced folders in the `Vagrantfile`.

Start and provision the VM with `vagrant up`.

You can re-provision with `vagrant provision` outside the VM or `make vagrant base`
in this directory inside the VM.

## Native
Install dependencies first:
```bash
$ sudo apt-get install -y git ansible 
```

```bash
$ sudo apt-get install -y openssh-server
# Secure and restart the ssh server.
$ sudo vi /etc/ssh/sshd_config
# PasswordAuthentication no
# PermitRootLogin no

$ sudo service ssh restart

# Test: allow ssh to localhost.
$ ~/.ssh/authorized_keys << ~/.ssh/id_rsa.pub
$ ssh localhost
# ...
```

Then
```bash
$ git clone git@github.com:elmisback/dev-env
$ cd dev-env
$ make  # Provision
```
