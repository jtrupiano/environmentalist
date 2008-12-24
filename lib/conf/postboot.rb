# Be sure to restart your server when you modify this file.

rails_env = ENV['RAILS_ENV'] || 'development'

env_dir  = File.join(RAILS_ROOT, 'config', rails_env)
db_file  = File.join(env_dir, 'database.yml')
env_file = File.join(env_dir, 'environment.rb')

raise "#{env_dir} environment directory cannot be found." unless File.exists?(env_dir)
raise "#{db_file} is missing.  You cannot continue without this." unless File.exists?(db_file)
raise "#{env_file} environment file is missing." unless File.exists?(env_file)

# Now, let's open up Rails and tell it to find our environment files elsewhere.
module Rails
  class Configuration
    
    def database_configuration_file
      File.join(root_path, 'config', environment, 'database.yml')
    end
    
    # The path to the current environment's file (development.rb, etc.). By
    # default the file is at <tt>config/environments/#{environment}.rb</tt>.
    def environment_path
      "#{root_path}/config/#{environment}/environment.rb"
    end
  end
end
