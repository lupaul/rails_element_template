# config valid for current version and patch releases of Capistrano
`ssh-add`
lock "~> 3.16.0"

set :application, "t3_rails"
set :repo_url, "git@github.com:hylove-tw/brain-analysis.git"
# set :assets_prefix, 'vite'
# set :npm_target_path, -> { '/home/deploy/staging_pptour/current/frontend/' }
# set :npm_method, 'run deploy'
# set :dist, '/home/deploy/staging_pptour/current/frontend/dist/'


# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"
# set :deploy_to, '/home/deploy/pptour'

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"
append:linked_files, 'config/database.yml', 'config/secrets.yml'

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/uploads', 'public/assets'

# set :passenger_restart_with_touch, true
