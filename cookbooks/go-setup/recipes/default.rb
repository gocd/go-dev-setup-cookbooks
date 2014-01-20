## go-setup

cookbook_file "/etc/motd" do
  source "README"
  mode "0644"
end

cookbook_file "/home/vagrant/README" do
  source "README"
  mode "0644"
end
