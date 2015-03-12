#
# Cookbook Name:: hivonic
# Recipe:: _install
#
# Copyright 2015, Will Drew
#

installs = node['hivonic']['installs']

if installs['gem']
  gem_package 'hivonic' do
    action :install
  end
end

if installs['chef_gem']
  chef_gem 'hivonic' do
    action :install
  end
end
