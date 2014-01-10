#
# Cookbook Name:: vps
# Recipe:: ghost
#
# Copyright 2014, windy.me
#
# All rights reserved - Do Not Redistribute
#

include_recipe "users"

users_manage node['ghost_user'] do
	action :create
end
