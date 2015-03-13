#
# Cookbook Name:: hivonic
# Recipe:: _install
#
# Copyright 2015, Will Drew
#

hivonic_attrs = node['hivonic']
h_version     = hivonic_attrs['version']
h_installs    = hivonic_attrs['installs']

if h_installs['gem']
  gem_package 'hivonic' do
    version h_version unless h_version.nil?
    action :install
  end
end

if h_installs['chef_gem']
  chef_gem 'hivonic' do
    version h_version unless h_version.nil?
    action :install
  end
end
