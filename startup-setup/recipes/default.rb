## auto-login and intellij desktop icon

script "startup-setup" do
  interpreter "bash"
  user "root"
  cwd "/home/vagrant"
  code <<-EOH
  echo "autologin-user=vagrant" >> /etc/lightdm/lightdm.conf
  echo "autologin-user-timeout=0" >> /etc/lightdm/lightdm.conf
  mkdir -p /home/vagrant/Desktop
  cp /usr/share/applications/intellij.desktop /home/vagrant/Desktop/intellij.desktop
  cp /usr/share/applications/intellij.desktop /etc/xdg/autostart
  EOH
end

