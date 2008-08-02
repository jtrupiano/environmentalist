Gem::Specification.new do |s|
  s.name = "environmentalist"
  s.version = PKG_VERSION
  s.platform = Gem::Platform::RUBY
  s.author = "John Trupiano"
  s.email = "jtrupiano@gmail.com"
  s.description = %q(Provides an executable that converts a rails app's config structure.  The basic idea is that environments themselves are now first-class citizens, allowing you to create several environments (e.g. staging, prodtest, demo, etc.) in a clean, organized fashion.  Each environment is given its own folder where it can store its own set of configuration files (think mongrel configs, apache configs, etc.) without polluting the top-leve config/ direcotory.)
  s.summary = s.description # More details later??
  s.has_rdoc = false
  s.require_paths = ["lib"]
  
  s.files = Dir.glob("{lib}/**/*") + Dir['bin/*'] + %w(README)
  s.executables = %w(environmentalize)
  
  s.add_dependency(%q<rails>, ['>= 2.0.2'])
end
