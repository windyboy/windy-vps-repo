template "#{node['nginx']['dir']}/sites-available/default" do
  source 'default-site.erb'
  owner  'root'
  group  'root'
  mode   0644
  notifies :reload, 'service[nginx]'
end

link "/var/www/nginx-default" do
	to node['ghost_home']
	action :create
end

service "nginx" do
  action [ :start ]
end

