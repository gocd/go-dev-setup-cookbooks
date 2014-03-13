## openbox

cookbook_file "/home/vagrant/.xinitrc" do
  owner "vagrant"
  group "vagrant"
  source "xinitrc"
  backup false
  mode "0664"
end

cookbook_file "/home/vagrant/.bash_profile" do
  owner "vagrant"
  group "vagrant"
  source "bash_profile"
  backup false
  mode "0664"
end

script "install_openbox" do
  interpreter "bash"
  user "root"
  cwd "/tmp/"
  code <<-EOH
  sudo apt-get -y --no-install-recommends install xserver-xorg xinit openbox xterm
  EOH
end
