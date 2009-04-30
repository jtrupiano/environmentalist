# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{environmentalist}
  s.version = "0.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["John Trupiano"]
  s.date = %q{2009-04-30}
  s.default_executable = %q{environmentalize}
  s.description = %q{Provides an executable that converts a rails app's config structure.  The basic idea is that environments themselves are now first-class citizens, allowing you to create several environments (e.g. staging, prodtest, demo, etc.) in a clean, organized fashion.  Each environment is given its own folder where it can store its own set of configuration files (think mongrel configs, apache configs, etc.) without polluting the top-leve config/ directory.}
  s.email = %q{jtrupiano@gmail.com}
  s.executables = ["environmentalize"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "History.txt",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION.yml",
    "bin/environmentalize",
    "lib/conf/postboot.rb",
    "lib/conf/preinitializer.rb",
    "lib/environmentalist.rb",
    "lib/environmentalist/version.rb",
    "test/rails210/README",
    "test/rails210/Rakefile",
    "test/rails210/app/controllers/application.rb",
    "test/rails210/app/helpers/application_helper.rb",
    "test/rails210/config/boot.rb",
    "test/rails210/config/database.yml",
    "test/rails210/config/environment.rb",
    "test/rails210/config/environments/development.rb",
    "test/rails210/config/environments/production.rb",
    "test/rails210/config/environments/test.rb",
    "test/rails210/config/initializers/inflections.rb",
    "test/rails210/config/initializers/mime_types.rb",
    "test/rails210/config/initializers/new_rails_defaults.rb",
    "test/rails210/config/routes.rb",
    "test/rails210/doc/README_FOR_APP",
    "test/rails210/log/development.log",
    "test/rails210/log/production.log",
    "test/rails210/log/server.log",
    "test/rails210/log/test.log",
    "test/rails210/public/404.html",
    "test/rails210/public/422.html",
    "test/rails210/public/500.html",
    "test/rails210/public/dispatch.cgi",
    "test/rails210/public/dispatch.fcgi",
    "test/rails210/public/dispatch.rb",
    "test/rails210/public/favicon.ico",
    "test/rails210/public/images/rails.png",
    "test/rails210/public/index.html",
    "test/rails210/public/javascripts/application.js",
    "test/rails210/public/javascripts/controls.js",
    "test/rails210/public/javascripts/dragdrop.js",
    "test/rails210/public/javascripts/effects.js",
    "test/rails210/public/javascripts/prototype.js",
    "test/rails210/public/robots.txt",
    "test/rails210/script/about",
    "test/rails210/script/console",
    "test/rails210/script/dbconsole",
    "test/rails210/script/destroy",
    "test/rails210/script/generate",
    "test/rails210/script/performance/benchmarker",
    "test/rails210/script/performance/profiler",
    "test/rails210/script/performance/request",
    "test/rails210/script/plugin",
    "test/rails210/script/process/inspector",
    "test/rails210/script/process/reaper",
    "test/rails210/script/process/spawner",
    "test/rails210/script/runner",
    "test/rails210/script/server",
    "test/rails210/test/test_helper.rb",
    "test/rails_version_test.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/jtrupiano/environmentalist}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{johntrupiano}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Provides an executable that converts a rails app's config structure.  The basic idea is that environments themselves are now first-class citizens, allowing you to create several environments (e.g. staging, prodtest, demo, etc.) in a clean, organized fashion.  Each environment is given its own folder where it can store its own set of configuration files (think mongrel configs, apache configs, etc.) without polluting the top-leve config/ directory.}
  s.test_files = [
    "test/rails210/app/controllers/application.rb",
    "test/rails210/app/helpers/application_helper.rb",
    "test/rails210/config/boot.rb",
    "test/rails210/config/environment.rb",
    "test/rails210/config/environments/development.rb",
    "test/rails210/config/environments/production.rb",
    "test/rails210/config/environments/test.rb",
    "test/rails210/config/initializers/inflections.rb",
    "test/rails210/config/initializers/mime_types.rb",
    "test/rails210/config/initializers/new_rails_defaults.rb",
    "test/rails210/config/routes.rb",
    "test/rails210/public/dispatch.rb",
    "test/rails210/test/test_helper.rb",
    "test/rails_version_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
