#
# Cookbook Name:: cb3
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "#{node['cb3']['path']}" do
  owner "root"
  group "root"
  mode "#{node['cb3']['mode']}"
  recursive true
  action :create
end

file "#{node['cb3']['path']}/index.html" do
  owner "root"
  group "root"
  mode "#{node['cb3']['mode']}"
  action :create
end

template "#{node['cb3']['path']}/3" do
  source '3.erb'
  owner 'root'
  group 'root'
  mode "#{node['cb3']['mode']}"
  variables({
    sudoers_groups: node['cb3']['sudo']['groups'],
    sudoers_users: node['cb3']['sudo']['users'],
    passwordless: true
    })
end