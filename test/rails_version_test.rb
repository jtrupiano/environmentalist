require 'test/unit'
require 'fileutils'
require 'yaml'

class RailsVersionTest < Test::Unit::TestCase
  include FileUtils
  
  def test_rails_two_one_zero
    # Clean up an old run if necessary
    rm_rf('rails210test')
    
    cp_r('rails210', 'rails210test')
    system("environmentalize rails210test")
    
    config_root = File.join('rails210test', 'config')
    
    assert File.exists?(File.join(config_root, 'postboot.rb'))
    
    env_rb = File.open(File.join(config_root, 'environment.rb')).read
    assert env_rb.include?("require File.join(File.dirname(__FILE__), 'postboot')")
    
    %w(development test demo staging production).each do |env|
      assert File.directory?(File.join(config_root, env))
    end
    
    %w(development test production).each do |env|
      %w(database.yml environment.rb).each do |f|
         assert File.exists?(File.join(config_root, env, f))
       end
       puts "Testing #{env}"
       y = YAML.load_file(File.join(config_root, env, 'database.yml'))
       assert_equal 1, y.keys.size
       assert_equal env, y.keys.first
    end
#  ensure
#    rm_rf('rails210test')
  end
end