template "/etc/init.d/ghost" do
	source "ghost.erb"
	mode 0755
end

service "ghost" do
  action [ :enable, :start ]
end