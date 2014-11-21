#Unicorn Config Modifed by Krug
#from digital ocean
#https://www.digitalocean.com/community/tutorials/how-to-deploy-rails-apps-using-unicorn-and-nginx-on-centos-6-5

# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/var/www/osfsufia"
#
# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/var/www/osfsufia/pids/unicorn.pid"
#
# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/var/www/osfsufia/log/unicorn.log"
stdout_path "/var/www/osfsufia/log/unicorn.log"
#
# Unicorn socket
listen "/var/www/unicorn.osfsufia.sock"
#
# Number of processes
# worker_processes 4
worker_processes 8
#
# Time-out
timeout 30
