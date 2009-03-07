# Ensure that proper versions of gems in config/geminstaller.yml are activated.
require 'rubygems'
gem 'rails', '= 2.3.0'
gem 'geminstaller', '= 0.5.2'
require 'geminstaller'

rails_env = ENV['RAILS_ENV'] || 'development'

perform_install = %w(development test).include?(rails_env)

# Activate gems
common_gemfile = File.join(RAILS_ROOT, 'config', 'geminstaller.yml')
env_gemfile    = File.join(RAILS_ROOT, "config", rails_env, "geminstaller.yml")

[common_gemfile, env_gemfile].each do |file|
  if File.exists?(file)
    GemInstaller.install("--exceptions --config=#{common_gemfile}") if perform_install
    GemInstaller.autogem("--exceptions --config=#{common_gemfile}")
  end
end
