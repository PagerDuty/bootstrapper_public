class BootstrapperGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def copy_files
    template 'bootstrap.erb', 'db/bootstrap.rb'
  end
end