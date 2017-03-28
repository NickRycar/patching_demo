#
# Cookbook:: patching_demo
# Recipe:: default
#
# Copyright:: 2017, Nick Rycar, All Rights Reserved.

apt_update 'Update apt repository' do
  action :update
end

# include_recipe 'patching_demo::upgrade'
