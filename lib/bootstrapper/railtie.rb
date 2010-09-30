module Bootstrapper
  class Railtie < Rails::Railtie
    config.bootstrapper = ActiveSupport::OrderedOptions.new
    
    # configure our plugin on boot. other extension points such
    # as configuration, rake tasks, etc, are also available
    initializer "bootstrapper.initialize" do |app|
      # subscribe to all rails notifications: controllers, AR, etc.
      ActiveSupport::Notifications.subscribe do |*args|
        event = ActiveSupport::Notifications::Event.new(*args)
        puts "Got notification: #{event.inspect}"
      end
    end
    
    ActiveSupport.on_load :active_record do
      require 'bootstrapper/bootstrapper'
    end
    
    rake_tasks do
      load "tasks/bootstrap.rake"
    end
  end
end
