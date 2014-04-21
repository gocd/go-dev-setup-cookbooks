# To reduce the size of the VM, remove some unused packages.

script "remove-unused-packages" do
  interpreter "bash"
  user "root"
  cwd "/home/vagrant"
  code <<-EOH
  for package in gcc-4.6 g++-4.6 samba-common* fonts-nanum rhythmbox* libreoffice-base-core libreoffice-calc libreoffice-common libreoffice-core libreoffice-draw libreoffice-emailmerge libreoffice-gnome libreoffice-gtk libreoffice-help-en-us libreoffice-impress libreoffice-math libreoffice-style-human libreoffice-style-tango libreoffice-writer thunderbird thunderbird-gnome-support firefox firefox-gnome-support pinyin-database linux-headers-3.2.0-30 linux-headers-3.2.0-30-generic linux-headers-server ubuntu-docs gnome-user-guide gnome-user-share ri1.8 aisleriot hplip hplip-data totem totem-common totem-mozilla totem-plugins seahorse geoip-database ure shotwell gdb gnome-orca example-content mutter-common; do
    echo "Removing $package"
    sudo apt-get -y purge $package;
  done

  rm -rf /usr/share/icons/gnome /usr/share/doc /usr/share/ri /usr/share/locale/[a-df-z]*
 EOH
end

