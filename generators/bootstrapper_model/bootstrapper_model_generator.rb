class BootstrapperModelGenerator < Rails::Generator::NamedBase
  def manifest
    record do |m|
      m.directory 'db/bootstrapper' 
      m.template 'bootstrapper_model.erb', "db/bootstrapper/#{plural_name}.rb"
    end
  end
end