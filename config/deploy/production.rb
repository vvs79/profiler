# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

# server "example.com", user: "deploy", roles: %w{app db web}, my_property: :my_value
# server "example.com", user: "deploy", roles: %w{app web}, other_property: :other_value
# server "db.example.com", user: "deploy", roles: %w{db}



# role-based syntax
# ==================

# Defines a role with one or multiple servers. The primary server in each
# group is considered to be the first unless any hosts have the primary
# property set. Specify the username and a domain or IP for the server.
# Don't use `:all`, it's a meta role.

# role :app, %w{deploy@example.com}, my_property: :my_value
# role :web, %w{user1@primary.com user2@additional.com}, other_property: :other_value
# role :db,  %w{deploy@example.com}



# Configuration
# =============
# You can set any configuration variable like in config/deploy.rb
# These variables are then only loaded and set in this stage.
# For available Capistrano configuration variables see the documentation page.
# http://capistranorb.com/documentation/getting-started/configuration/
# Feel free to add new variables to customise your setup.



# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/user_name/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# The server-based syntax can be used to override options:
# ------------------------------------
# server "example.com",
#   user: "user_name",
#   roles: %w{web app},
#   ssh_options: {
#     user: "user_name", # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: "please use keys"
#   }







# New functions

# set :stage, :production
# set :branch, ENV['DEPLOYMENT_BRANCH'] || 'master'

# # This is used in the Nginx VirtualHost to specify which domains
# # the app should appear on. If you don't yet have DNS setup, you'll
# # need to create entries in your local Hosts file for testing.
# # set :server_name, '~^(www\\.)?(\\d+|admin|uploads)\\.tripoded\\.com$'

# # set :rvm_roles, :web
# # set :rvm_ruby_version, "2.5.1@#{File.read('.ruby-gemset').strip}"
# server '35.167.221.85', user: 'ubuntu', roles: %w[web app db], primary: true, ssh_options: {
#   keys: ['./aws_key.pem']
# }

# set :deploy_to, "/home/ubuntu/apps/profiler"

# # dont try and infer something as important as environment from
# # stage name.
# set :rails_env, :production

# set :pem_key, './aws_key.pem'

# # Server pem-key authentication
# set :ssh_options, forward_agent: true, auth_methods: ['publickey'], keys: [fetch(:pem_key)]

# # # before 'deploy:check:linked_files', 'deploy:copy_config'
