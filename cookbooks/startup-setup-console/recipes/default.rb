#setting up auto login for console

script "startup-setup-console" do
  interpreter "bash"
  user "root"
  cwd "/home/vagrant"
  code <<-EOH
    sed -i -e 's#exec /sbin/getty#& --autologin vagrant#' /etc/init/tty1.conf
  EOH
end

