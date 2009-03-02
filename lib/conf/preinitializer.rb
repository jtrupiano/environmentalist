# Ensure that proper versions of gems in config/geminstaller.yml are activated.
require 'rubygems'
gem 'rails', '= 2.3.0'
gem 'geminstaller', '= 0.5.1'
require 'geminstaller'

rails_env = ENV['RAILS_ENV'] || 'development'
#perform_install = %w(development test).include?(rails_env)

# Activate common gems
common_gemfile = 'config/geminstaller.yml'
#GemInstaller.install('--sudo --exceptions --config=config/geminstaller.yml') if perform_install
GemInstaller.autogem("--sudo --exceptions --config=#{common_gemfile}") if File.exists?(common_gemfile)

# Activate environment-specific gems
path = File.join(RAILS_ROOT, "config", rails_env, "geminstaller.yml")
if File.exists?(path)
  #GemInstaller.install("--sudo --exceptions --config=#{path}") if perform_install
  GemInstaller.autogem("--sudo --exceptions --config=#{path}")
end