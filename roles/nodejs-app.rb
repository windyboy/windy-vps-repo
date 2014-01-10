name "nodejs-app"
description "node.js application server"
default_attributes (
	{
		"tz" => "Asia/Hong_Kong",
		"nginx" => {"user" => "nginx", "group"=>"www-data", "default_site_enabled"=>"off"}
	}
)
run_list 	"recipe[nodejs::install_from_source]",
			"recipe[nodejs::npm]",
			"recipe[vps::users]",
			"recipe[timezone-ii::debian]",
			"recipe[nginx::source]",
			"recipe[vps::nginx]",
			"recipe[vps::ghost]"