# Setup

## Vagrant VM
Make sure you like the synced folders in the `Vagrantfile`.

Start and provision the VM with `vagrant up`.

You can re-provision with `vagrant provision` outside the VM or `make vagrant base`
in this directory inside the VM.

## Native
Install dependencies first:
```bash
$ sudo apt-get install -y git ansible make
```

Then
```bash
$ git clone git@github.com:elmisback/dev-env
$ cd dev-env
$ make  # Provision
```

# Post-setup

Make sure you're in a terminal that can copy text to the clipboard. Initialize drive:
```
init ~/gdrive
```
