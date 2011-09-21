require "bundler/capistrano"

set :user, 'integers'  # Your dreamhost account's username
set :domain, 'theicecreamsocial.com'  # Dreamhost servername where your account is located 
set :project, 'git'  # Your application as its called in the repository
set :application, 'cbx.theicecreamsocial.com'  # Your app's location (domain or sub-domain name as setup in panel)
set :applicationdir, "/home/#{user}/#{application}"  # The standard Dreamhost setup

# version control config
set :scm, 'git'
set :repository,  "git@github.com:regcrusher/cbx.git"
set :deploy_via, :remote_cache
set :git_enable_submodules, 1 # if you have vendored rails
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true

# roles (servers)
role :web, domain
role :app, domain
role :db,  domain, :primary => true

# deploy config
set :deploy_to, applicationdir
set :deploy_via, :export
set :default_environment, { 'PATH' => "'/usr/lib/ruby/gems/1.8/bin//bundle:/home/integers/.gems/bin:/usr/lib/ruby/gems/1.8/bin/:/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/games'" }

ssh_options[:forward_agent] = true



symlink_configuration = [
  %w(config/database.yml    config/database.yml),
  %w(db/production.sqlite3  db/production.sqlite3),
  %w(system                 public/system)
]


# additional settings
set :chmod755, "app config db lib public vendor script script/* public/disp*"
set :use_sudo, false

desc "restart override"
task :restart, :roles => :app do
  run "killall -9 ruby"
end

namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end

set(:shared_database_path) {"#{shared_path}/databases"}



namespace :db do
  
    desc "Syncs the database.yml file from the local machine to the remote machine"
    task :sync_yaml do
      puts "\n\n=== Syncing database yaml to the production server! ===\n\n"
      unless File.exist?("config/database.yml")
        puts "There is no config/database.yml.\n "
        exit
      end
      system "rsync -vr --exclude='.DS_Store' config/database.yml #{user}@#{application}:#{shared_path}/config/"
    end
    
    desc "Create Production Database"
    task :create do
      puts "\n\n=== Creating the Production Database! ===\n\n"
      run "cd #{current_path}; bundle exec rake db:create RAILS_ENV=production"
      system "cap deploy:set_permissions"
    end
  
    desc "Migrate Production Database"
    task :migrate do
      puts "\n\n=== Migrating the Production Database! ===\n\n"
      run "cd #{current_path}; bundle exec rake db:migrate RAILS_ENV=production"
      system "cap deploy:set_permissions"
    end

    desc "Resets the Production Database"
    task :migrate_reset do
      puts "\n\n=== Resetting the Production Database! ===\n\n"
      run "cd #{current_path}; bundle exec rake db:migrate:reset RAILS_ENV=production"
    end
    
    desc "Destroys Production Database"
    task :drop do
      puts "\n\n=== Destroying the Production Database! ===\n\n"
      run "cd #{current_path}; bundle exec rake db:drop RAILS_ENV=production"
      system "cap deploy:set_permissions"
    end

    desc "Moves the SQLite3 Production Database to the shared path"
    task :move_to_shared do
      puts "\n\n=== Moving the SQLite3 Production Database to the shared path! ===\n\n"
      run "mv #{current_path}/db/production.sqlite3 #{shared_path}/db/production.sqlite3"
      system "cap deploy:setup_symlinks"
      system "cap deploy:set_permissions"
    end
  
    desc "Populates the Production Database"
    task :seed do
      puts "\n\n=== Populating the Production Database! ===\n\n"
      run "cd #{current_path}; bundle exec rake db:seed RAILS_ENV=production"
    end
  
  end
end

task :after_symlink do
  %w[database.yml].each do |c|
    run "ln -nsf #{shared_path}/config/#{c} #{current_path}/config/#{c}"
  end
  run "ln -nsf #{shared_path}/uploads/system #{current_path}/public/system"
end