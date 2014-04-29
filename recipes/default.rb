#
# Cookbook Name:: odi-rummager-node
# Recipe:: default
#
# Copyright 2014, Open Data Institute
#

include_recipe "odi-monitoring"

package "aspell-en" do
  action :upgrade
end
