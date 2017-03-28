#
# Cookbook:: patching_demo
# Recipe:: upgrade
#
# Copyright:: 2017, Nick Rycar, All Rights Reserved.

execute 'Update :allthethings:' do
  command 'sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade'
  action :run
end
