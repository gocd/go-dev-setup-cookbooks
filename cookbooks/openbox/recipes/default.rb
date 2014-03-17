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

cookbook_file "/home/vagrant/menu.xml" do
  owner "vagrant"
  group "vagrant"
  source "menu.xml"
  backup false
  mode "0664"
end

script "install_openbox" do
  interpreter "bash"
  user "root"
  cwd "/tmp/"
  code <<-EOH
  sudo apt-get -y --no-install-recommends install xserver-xorg xinit openbox xterm

  sudo apt-get install cairo-dock

  mkdir -p ~/.config/openbox
  cp -R /etc/xdg/openbox/* ~/.config/openbox
  cp /home/vagrant/menu.xml ~/.config/openbox
  rm /home/vagrant/menu.xml
  EOH
end
