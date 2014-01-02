## gnome

script "install_gnome" do
  interpreter "bash"
  user "root"
  cwd "/tmp/"
  code <<-EOH
  sudo apt-get -y install python-software-properties
  sudo add-apt-repository ppa:gnome3-team/gnome3
  sudo apt-get update
  sudo apt-get -y install gnome-shell ubuntu-desktop
  EOH
end
