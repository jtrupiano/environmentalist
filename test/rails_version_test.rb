require 'test/unit'
require 'fileutils'

class RailsVersionTest < Test::Unit::TestCase
  include FileUtils
  
  def test_rails_two_one_zero
    cp_r('rails210', 'rails210test')
    system("cd rails210test && environmentalize")
    
    config_root = File.join('rails210test', 'config')
    
    assert File.exists?(File.join(config_root, 'postboot.rb'))
    assert File.open(File.join(config_root, 'environment.rb')).read.include?("require 'postboot'")
    %w(development test demo staging production).each do |env|
      assert File.directory?(File.join(config_root, env))
    end
  ensure
    rm_rf('rails210test')
  end
end