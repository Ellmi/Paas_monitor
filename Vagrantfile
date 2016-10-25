
Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.box_check_update = false

  config.vm.network :forwarded_port, guest: 80, host: 4000
  config.vm.network :private_network, ip: "192.168.33.10"

  config.vm.provision :ansible do | ansible |
    ansible.limit = "all"
    ansible.verbose = "vvv"
    ansible.playbook = "provision/nagios.yml"
    ansible.inventory_path = "provision/inventory/inventory"
  end

end