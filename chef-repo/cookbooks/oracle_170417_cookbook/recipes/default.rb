#
# Cookbook Name:: oracle_170417_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

Chef::Log.info("Hello world. I am in chef training - version 0.1.1 - DATE 19-APR-17")

directory "#{node['oracle_170417_cookbook']['directory']}" do
  owner "#{node['oracle_170417_cookbook']['owner']}"
  group "#{node['oracle_170417_cookbook']['group']}"
  mode "#{node['oracle_170417_cookbook']['mode']}"
  recursive true
  action :create
end

cookbook_file "#{node['oracle_170417_cookbook']['directory']}/index.html" do
  source 'index.html'
  owner "#{node['oracle_170417_cookbook']['owner']}"
  group "#{node['oracle_170417_cookbook']['group']}"
  mode "#{node['oracle_170417_cookbook']['mode']}"
  action :create
end

template '/home/vagrant/sudoers' do
  source 'sudoers.erb'
  owner 'root'
  group 'root'
  mode '0440'
  variables({
    sudoers_groups: node['oracle_170417_cookbook']['sudo']['groups'],
    sudoers_users: node['oracle_170417_cookbook']['sudo']['users'],
    passwordless: true
    })
end



