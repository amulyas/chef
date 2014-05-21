# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "amulyasharma"
client_key               "#{current_dir}/amulyasharma.pem"
validation_client_name   "aaws-validator"
validation_key           "#{current_dir}/aaws-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/aaws"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
