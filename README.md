# Setup
## Vagrant VM
Make sure you like the synced folders in the `Vagrantfile`.

Start and provision the VM with `vagrant up`.

You can re-provision with `vagrant provision` outside the VM or `make vagrant base`
in this directory inside the VM.

## Native
Depends on ansible, so install that first:
```bash
$ sudo apt-get install -y ansible
```

Then
```bash
$ git clone git@github.com:elmisback/dev-env
$ cd dev-env
$ make  # Provision
```
