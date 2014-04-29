#
# Cookbook Name:: odi-rummager-node
# Recipe:: default
#
# Copyright 2014, Open Data Institute
#

package "aspell-en" do
  action :upgrade
end

include_recipe "odi-monitoring"
include_recipe "rvm::system"
include_recipe "odi-users"
include_recipe "envbuilder"
include_recipe "odi-nginx"
