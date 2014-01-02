#
# Cookbook Name:: sass
# Recipe:: default
#
# https://github.com/jtgraphic/opscode-chef-cookbook-sass

Package "rubygems"

Execute "gem install sass" do
    not_if "which sass"
end
