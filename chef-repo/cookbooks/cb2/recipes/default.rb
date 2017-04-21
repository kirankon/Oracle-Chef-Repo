#
# Cookbook Name:: cb2
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
directory "#{node['cb2']['path']}" do
  owner "root"
  group "root"
  mode "#{node['cb2']['mode']}"
  recursive true
  action :create
end

file "#{node['cb2']['path']}/index.html" do
  owner "root"
  group "root"
  mode "#{node['cb2']['mode']}"
  action :create
end

template "#{node['cb2']['path']}/2" do
  source '2.erb'
  owner 'root'
  group 'root'
  mode "#{node['cb2']['mode']}"
  variables({
    sudoers_groups: node['cb2']['sudo']['groups'],
    sudoers_users: node['cb2']['sudo']['users'],
    passwordless: true
    })
end