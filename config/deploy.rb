# config valid only for current version of Capistrano
lock "3.7.2"


server '127.0.0.1', user: 'bikramthapa', roles: %w{web app}
set :application, "showterm-bikram"
set :repo_url, "git@github.com:veekrum/showterm.git"



	

set :user, 'bikramthapa'
set :deploy_to, "/home/#{fetch(:user)}/#{fetch(:application)}"
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

  namespace :deploy do 
    task command do
    on "localhost" do
     execute " /home/bikramthapa/showterm-bikram/current #{rails s}"  ## -> line you should add
       # execute "/home/bikramthapa/#{fetch(:application)} "
     end
    end
  end

#  task :execute_on_server do
#   on "bikramthapa@localhost" do
#     execute "cd /home/bikramthapa/showterm-bikram/current"
#     execute "rails s"
#   end
# end

# role :demo, %w{bikramthapa@localhost}
# task :uptime do
#   on roles(:demo), in: :parallel do |host|
#     uptime = capture(:uptime)
#     puts "#{host.hostname} reports: #{uptime}"
#   end
# end