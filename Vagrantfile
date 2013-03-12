Vagrant::Config.run do |config|
# All Vagrant configuration is done here. The most common configuration
# options are documented and commented below. For a complete reference,
# please see the online documentation at vagrantup.com.

config.vm.define :owncloud do |owncloud_config|
       owncloud_config.vm.box = "Centos6"
       owncloud_config.ssh.max_tries = 100
       owncloud_config.vm.host_name = "owncloud.krisbuytaert.be"
       owncloud_config.vm.network  :hostonly, "10.42.44.9"
       owncloud_config.vm.provision :puppet do |owncloud_puppet|
         owncloud_puppet.pp_path = "/tmp/vagrant-puppet"
         owncloud_puppet.manifests_path = "manifests"
         owncloud_puppet.module_path = "modules"
         owncloud_puppet.manifest_file = "site.pp"
       end
  end



end
# vim: set tabstop=2 paste expandtab:
# vim: syntax=ruby:

