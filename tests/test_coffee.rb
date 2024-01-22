require 'minitest/autorun'
require './coffee'



class TestCoffee < Minitest::Test
  
  def name_order
 
    puts "Please enjoy your coffee~"
    
  end
  

  def test_name_order
    assert_output ("Please enjoy your coffee~\n") { name_order }
  end

end
