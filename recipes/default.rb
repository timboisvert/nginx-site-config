include_recipe "nginx"

template "#{node[:nginx][:dir]}/sites-available/#{node["nginx-site-config"]["key"]}" do
  source "site.conf.erb"
  owner "root"
  group "root"
  mode "0644"
end

nginx_site "#{node["nginx-site-config"]["key"]}" do
  action :enable
end