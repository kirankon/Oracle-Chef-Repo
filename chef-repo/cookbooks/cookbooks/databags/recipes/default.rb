#
# Cookbook Name:: databags
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


dataBagItemObj = data_bag_item('user', 'kiran')
Chef::Log.info("#{dataBagItemObj['monitor_config']['secretKey']}")


encryptedObj = Chef::EncryptedDataBagItem.load("user", "kiran_encrypted")
username = encryptedObj['username']
password = encryptedObj['password']
Chef::Log.info("username: '#{username}'")
Chef::Log.info("password: '#{password}'")


admins = data_bag('user')
admins.each do |login|
  admin = data_bag_item('user', login)
  if node.name == admin['id']
   Chef::Log.info("I am in #{node.name}")
  else
   Chef::Log.info("#{admin['id']} : I am NOT in #{node.name}")
  end
end

Chef::Log.info("Destroying the dataBagItem #{node.name} if it exists")
retVal = admins.delete("kiran_oracle_node")
if(retVal == nil)
	Chef::Log.info("Destroying of dataBagItem #{node.name} failed")
else
	#admins.save()
	Chef::Log.info("Destroying of dataBagItem #{node.name} succeeded")
end


