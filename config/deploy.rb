set :application, "www.apnavirsa.net"
set :repository,  "git@github.com:jaischeema/apnavirsa.git"

set :scm, :git

set :deploy_to, "/home/jais/production/www.apnavirsa.net"

ssh_options[:port] = 3303

server "10.1.1.222", :app, :web, :db, :primary => true

default_run_options[:pty] = true

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
