#
# Cookbook Name:: cb1
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

Chef::Recipe.send(:include, OracleCorp)
directory "#{node['cb1']['path']}" do
  owner "root"
  group "root"
  mode "#{node['cb1']['mode']}"
  recursive true
  action :create
end

file "#{node['cb1']['path']}/index.html" do
  owner "root"
  group "root"
  mode "#{node['cb1']['mode']}"
  action :create
end

template "#{node['cb1']['path']}/1" do
  source '1.erb'
  owner 'root'
  group 'root'
  mode "#{node['cb1']['mode']}"
  variables({
    sudoers_groups: node['cb1']['sudo']['groups'],
    sudoers_users: node['cb1']['sudo']['users'],
    passwordless: true
    })
end


weblogic = OracleCorp::WebLogic.new(100)
oracle = OracleCorp::Oracle.new(200)

Chef::Log.info("oracle_price   : #{oracle.price}")
Chef::Log.info("weblogic_price : #{weblogic.price}")
Chef::Log.info("weblogic_info  : #{OracleCorp::WebLogic.info}")
Chef::Log.info("oracle_info    : #{oracle.info}")

