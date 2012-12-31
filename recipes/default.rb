include_recipe "nginx"

template "#{node[:nginx][:dir]}/sites-available/default" do
  source "site.conf.erb"
  owner "root"
  group "root"
  mode "0644"
end

nginx_site "default" do
  action :enable
end

#install pdo
php_pear "pdo" do
  action :install
end