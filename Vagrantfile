# vi: set ft=ruby :
# See https://docs.vagrantup.com for details.

$hostdir_sync = "../dev"
$guestdir_sync = "/home/vagrant/dev"

$VAGRANT_CONFIG_VERSION = 2  # Don't change.
Vagrant.configure($VAGRANT_CONFIG_VERSION) do |config|

  config.vm.box = "debian/jessie64"
  config.vm.synced_folder ".", "/home/vagrant/dev-env"
  config.vm.synced_folder $hostdir_sync, $guestdir_sync

  config.vm.provider "virtualbox" do |vb|
    vb.name = "dev-vm"
    # Add bidirectional clipboard support.
    vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
  end

  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true

  # Run Ansible from the Vagrant VM.
  # First add Vagrant-specific provisions.
  config.vm.provision "ansible_local" do |ansible|
    ansible.provisioning_path = "/home/vagrant/dev-env"
    ansible.playbook = "playbook-vagrant.yml"
  end

  # Next, provision as ususal.
  config.vm.provision "ansible_local" do |ansible|
    ansible.provisioning_path = "/home/vagrant/dev-env"
    ansible.playbook = "playbook.yml"
  end
end
