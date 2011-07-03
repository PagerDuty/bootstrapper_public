require 'rails/generators'

class BootstrapperModelGenerator < Rails::Generators::NamedBase
  def self.source_root
    @source_root ||= File.join(File.dirname(__FILE__), 'templates')
  end

  def manifest
    template 'bootstrapper_model.erb', "db/bootstrapper/#{plural_name}.rb"
  end
end
