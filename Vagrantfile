# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "precise64"
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"

    config.vm.hostname = "web"

    config.vm.network "private_network", ip: "192.168.1.50"
    config.vm.network :forwarded_port, guest: 9966, host: 3333
    config.vm.provider :virtualbox do |vb|
        vb.name = "web"
    end

    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "playbook.yml"
    end

end
