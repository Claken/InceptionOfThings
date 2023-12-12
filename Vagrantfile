# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "sachouamS" do | sachou |
    sachou.vm.hostname = "sachouam" # nom de la machine virtuelle
    sachou.vm.box = "bento/centos-7.3" # pour utiliser une box centos 7.3
    sachou.vm.box_check_update = false # pour ne pas vérifier les mises à jour de la box
    sachou.vm.boot_timeout = 400 #  The time in seconds that Vagrant will wait for the machine to boot and be accessible. By default this is 300 seconds.
    sachou.vm.graceful_halt_timeout = 100
    sachou.vm.provider "virtualbox" do | v |
      v.name = "sachouam"
      v.memory = 512
      v.cpus = 1
      sachou.vm.network "private_network", ip: "192.168.56.110"
    end
    
  end
    # (integer) - The time in seconds that Vagrant will wait for the machine to gracefully halt when "vagrant halt" is called. Defaults to 60 seconds.
    config.vm.post_up_message = "La machine virtuelle est prête !"
    #  A message to show after vagrant up.
    # This will be shown to the user and is useful for containing instructions such as how to access various components of the development environment.
    config.vm.provision "shell", inline: "echo Hello" # This causes "echo Hello" to be run within the guest machine when provisioners are run.
  end