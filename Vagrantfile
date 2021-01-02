Vagrant.configure(2) do |config|
  # Setup the box to run Ubuntu 18.04
  config.vm.box = "bento/ubuntu-18.04"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine.
  config.vm.network "forwarded_port", guest: 80, host: 8088

  # Private network
  config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder "./csgo", "/home/vagrant/serverfiles/csgo"

  # Provision script
  config.vm.provision "shell", path: "install.sh", privileged: false

end
