#
# Cookbook Name:: rake
# Recipe:: default
#
# Copyright 2011, Ernie Brodeur
# License: Beer-ware rv 42
#
#  ----------------------------------------------------------------------------
#  "THE BEER-WARE LICENSE" (Revision 42):
#  <ebrodeur@ujami.net> wrote this file. As long as you retain this notice you
#  can do whatever you want with this stuff. If we meet some day, and you think
#  this stuff is worth it, you can buy me a beer in return.
#  ----------------------------------------------------------------------------

gem_package "rake" do
  action :install
end