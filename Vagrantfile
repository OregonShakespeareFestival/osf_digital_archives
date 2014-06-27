# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box      = "hydra/sufia.0.3"
  config.vm.box_url  = "https://s3-us-west-2.amazonaws.com/osfsufiabox/hydra-sufia-0.3.box"
  config.vm.network   "forwarded_port", guest: 3000, host: 3000
  config.vm.network   "forwarded_port", guest: 8983, host: 8983

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "4096"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
    # following configs resolve a bug causing bundle gem to hang 5 seconds per get
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "off"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "off"]
  end

end
