#
# Cookbook Name:: parent
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'child::child_recipe'

if node['child']['child_attr'] == 'yes'
	Chef::Log.info("YES : can access child's attributes from parent since parent depends on child")
else
	Chef::Log.info("NO : can NOT access child's attributes from parent even though parent depends on child")
end
