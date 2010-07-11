class BootstrapperGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def copy_files
    copy_file 'bootstrap.erb', 'db/bootstrap.rb'
  end
end