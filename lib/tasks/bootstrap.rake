namespace :db do
  desc "Bootstraps the database for the given environment. BOOTSTRAP option lets you run a specific bootstrap task in the given environment."
  task :bootstrap => :environment do
    require 'active_record/base'
    require File.join(Rails.root, 'db', 'bootstrap')
    Bootstrapper.run(ENV['BOOTSTRAP'] || Rails.env)
  end

  namespace :bootstrap do
    desc "Resets the database and bootstraps it for the given environment. BOOTSTRAP option lets you run a specific bootstrap task in the given environment."
    task :reset => ['db:migrate:reset', 'reset_environment'] do
      Rake::Task['db:bootstrap'].invoke
    end
  end
end

desc "Resets the rails environment"
task :reset_environment do
  ActionDispatch::Reloader.cleanup!
  ActionDispatch::Reloader.prepare!
end
