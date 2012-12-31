include_recipe "nginx"

template "#{node[:nginx][:dir]}/sites-available/#{node["nginx-site-config"]["key"]}" do
  source "site.conf.erb"
  owner "root"
  group "root"
  mode "0644"
  variables(
    :docroot => node["nginx-site-config"]["docroot"],
    :server_name => node["nginx-site-config"]['server_name']
  )
end

nginx_site "#{node[:nginx][:dir]}/sites-available/#{node["nginx-site-config"]["key"]}" do
  action :enable
end