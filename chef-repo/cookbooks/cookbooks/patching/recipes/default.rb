#
# Cookbook Name:: patching
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
node.default['patching']['version']          = "recipe_default"			 # Pri - 02
node.force_default['patching']['version']    = "recipe_force_default"    # Pri - 06
#node.normal['patching']['version']           = "recipe_normal"			 # Pri - 08
#node.override['patching']['version']         = "recipe_override"		 # Pri - 10
#node.force_override['patching']['version']   = "recipe_force_override"   # Pri - 14

Chef::Log.info("Inside version #{node['patching']['version']}")

run_context.cookbook_collection.each do |key, cookbook|
 node.set['base_cookbook']['cookbook_versions'][cookbook.name] = cookbook.version
 Chef::Log.info("I am in version #{node['base_cookbook']['cookbook_versions'][cookbook.name]}")
end
