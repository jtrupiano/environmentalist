require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "environmentalist"
    #s.rubyforge_name = 'johntrupiano' # if different than lowercase project name
    s.description = %q(Provides an executable that converts a rails app's config structure.  The basic idea is that environments themselves are now first-class citizens, allowing you to create several environments (e.g. staging, prodtest, demo, etc.) in a clean, organized fashion.  Each environment is given its own folder where it can store its own set of configuration files (think mongrel configs, apache configs, etc.) without polluting the top-leve config/ directory.)
    s.summary = s.description # More details later??
    s.email = "jtrupiano@gmail.com"
    s.homepage = "http://github.com/jtrupiano/environmentalist"
    s.authors = ["John Trupiano"]
    s.executables = "environmentalize"
    #s.files =  FileList["[A-Z]*", "{bin,generators,lib,test}/**/*", 'lib/jeweler/templates/.gitignore']
    #s.add_dependency 'schacon-git'
  end
rescue LoadError
  puts "Jeweler, or one of its dependencies, is not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

