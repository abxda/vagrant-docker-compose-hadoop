# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  
  config.vm.provider "virtualbox" do |v|
      v.memory = 4096
      v.cpus = 4
  end
  
  config.vm.provider "vmware_desktop" do |v|
      v.vmx["memsize"] = "4096"
      v.vmx["numvcpus"] = "4"
  end
  config.vm.provision "shell", path: "install-hadoop-client.sh"
  
  config.vm.provision :docker
  config.vm.provision :docker_compose, yml: "/vagrant/docker-compose.yml", run: "always"
  
  
 
end



