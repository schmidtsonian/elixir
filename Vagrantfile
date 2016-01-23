 # -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "elixir-dev-box"
  config.vm.box_url = "./box/ubuntu_1504_elixir.box"

  config.ssh.forward_agent = true
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :forwarded_port, guest: 5000, host: 5000
  config.vm.network :forwarded_port, guest: 5432, host: 5432

  config.vm.network :private_network, ip: "192.168.33.10"
  config.vm.synced_folder ".", "/vagrant", :nfs => true
  
end
