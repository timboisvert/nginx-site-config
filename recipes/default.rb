include_recipe "nginx"

app_config = node["nginx-site-config"]

nginx_site "default" do
  server_name app_config['server_name']
  docroot app_config['docroot']
  template "nginx/default.erb"
  action :enable
end