app_config = node["nginx-site-config"]

include_recipe "nginx"

nginx_site "site" do
  server_name app_config['server_name']
  docroot app_config['docroot']
  template "nginx/site.conf.erb"
  action :enable
end