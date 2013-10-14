require 'test/unit'
require 'zoo_pass'

class ZooPassTest < Test::Unit::TestCase
  
  def test_generate
    passcode = ZooPass.generate
    assert_not_nil passcode
    puts passcode    
  end

  def test_generate_name
    name = ZooPass.generate_name
    assert_not_nil name
    puts name
  end

end
