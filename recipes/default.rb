#
# Cookbook Name:: odi-rummager-node
# Recipe:: default
#
# Copyright 2014, Open Data Institute
#

package "aspell-en" do
  action :upgrade
end

link "/usr/lib/libaspell.so" do
  to "/usr/lib/libaspell.so.15"
  action :create
end

include_recipe "odi-monitoring"
include_recipe "odi-users"
include_recipe "odi-rvm"
include_recipe "envbuilder"
include_recipe "odi-nginx"
include_recipe "odi-simple-deployment"
