current_dir = File.dirname(__FILE__)
log_level                :info
log_location              STDOUT
node_name                 'chef-admin'
client_key                'chef-admin.pem'
validation_client_name    'chef-org'
validation_key            'chef-org.pem'
cache_type                'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path             ["#{current_dir}/../cookbooks"]
chef_server_url           'https://chef-server/organizations/chef-org'
