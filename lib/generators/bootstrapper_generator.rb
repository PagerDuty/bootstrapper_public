require 'rails/generators'
 
class BootstrapperGenerator < Rails::Generators::Base
  def self.source_root
    @source_root ||= File.join(File.dirname(__FILE__), 'templates')
  end

  def copy_files
    empty_directory 'db/bootstrapper'
    template 'bootstrap.erb', 'db/bootstrap.rb'
  end
end
