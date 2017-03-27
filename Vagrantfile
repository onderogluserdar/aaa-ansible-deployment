# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"


Vagrant.configure(VAGRANTFILE_API_VERSION) do |cluster|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.


cluster.vm.define "controller-node" do |config|
  config.vm.box = "centos/7"
  config.ssh.insert_key = false
  config.ssh.forward_agent = true
  config.vm.provider :virtualbox do |vb, override|
    vb.customize ["modifyvm", :id, "--memory", "128"]
    vb.customize ["modifyvm", :id, "--cpus", "1"]
  end
  config.vm.hostname = "controller-node"
  config.vm.network :private_network, ip: "10.45.0.2"
  config.vm.provision "shell", path: "setup.sh"
end


#cluster.vm.define "node-dev" do |config|
#  config.vm.box = "onderogluserdar/aaa-devbox-cent7"
#  config.ssh.insert_key = false
#  config.vm.provider :virtualbox do |vb, override|
#    vb.customize ["modifyvm", :id, "--memory", "1024"]
#    vb.customize ["modifyvm", :id, "--cpus", "1"]
#  end
#  config.vm.hostname = "node-dev"
#  config.vm.network :private_network, ip: "10.45.0.6"
#end

cluster.vm.define "node-aaaserver" do |config|
  config.vm.box = "onderogluserdar/aaa-devbox-cent7"
  config.ssh.insert_key = false
  config.vm.provider :virtualbox do |vb, override|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--cpus", "1"]
  end
  config.vm.hostname = "node-aaaserver"
  config.vm.network :private_network, ip: "10.45.0.7"
end

cluster.vm.define "node-aaaproxy" do |config|
  config.vm.box = "onderogluserdar/aaa-devbox-cent7"
  config.ssh.insert_key = false
  config.vm.provider :virtualbox do |vb, override|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--cpus", "1"]
  end
  config.vm.hostname = "node-aaaproxy"
  config.vm.network :private_network, ip: "10.45.0.8"
end

cluster.vm.define "node-ms" do |config|
  config.vm.box = "onderogluserdar/aaa-devbox-cent7"
  config.ssh.insert_key = false
  config.vm.provider :virtualbox do |vb, override|
    vb.customize ["modifyvm", :id, "--memory", "256"]
    vb.customize ["modifyvm", :id, "--cpus", "1"]
  end
  config.vm.hostname = "node-ms"
  config.vm.network :private_network, ip: "10.45.0.9"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
end


cluster.vm.define "node-test" do |config|
  config.vm.box = "onderogluserdar/aaa-devbox-cent7"
  config.ssh.insert_key = false
  config.vm.provider :virtualbox do |vb, override|
    vb.customize ["modifyvm", :id, "--memory", "512"]
    vb.customize ["modifyvm", :id, "--cpus", "1"]
  end
  config.vm.hostname = "node-test"
  config.vm.network :private_network, ip: "10.45.0.10"
end

end
