require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the bootstrapper gem.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the bootstrapper plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Bootstrapper'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require "jeweler"
  Jeweler::Tasks.new do |gem|
    gem.name = "bootstrapper"
    gem.summary = "The better way to load seed data (than seeds.rb)"
    gem.version = '0.3.0'
    gem.email = "jrmehle@gmail.com"
    gem.homepage = "http://github.com/jrmehle/bootstrapper"
    gem.authors = ["Jared Mehle"]
    gem.files = FileList["{lib}/**/*"]
    gem.add_dependency("activerecord",  ">= 3.0.0")
    gem.add_dependency("activesupport", ">= 3.0.0")
  end
  
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler, or one of its dependencies, is not available. Install it with: gem install jeweler"
end
