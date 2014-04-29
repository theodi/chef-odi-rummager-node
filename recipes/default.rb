#
# Cookbook Name:: odi-rummager-node
# Recipe:: default
#
# Copyright 2014, Open Data Institute
#

include_recipe "odi-monitoring"
include_recipe "rvm::system"

package "aspell-en" do
  action :upgrade
end
