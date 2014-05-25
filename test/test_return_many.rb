require 'return_many'
require 'test/unit'
include ReturnMany

class TestMultipleReturn < Test::Unit::TestCase
  def test_return_one
    # bad
    random_number = rand(42)
    # results = MultipleReturn.new(expected)
    # assert_equal(expected, results)
    result = MultipleReturn.new a: random_number
    assert_equal({a: random_number}, result)
  end
  
  def test_return_multiple
    exp1, exp2, exp3 = rand(42), rand(42), rand(42)
     
    res1, res2, res3 = MultipleReturn.new a: exp1, b: exp2, c: exp3
    
    
    assert_equal(exp1, res1)
    assert_equal(exp2, res2)
    assert_equal(exp3, res3)

  end

  def test_return_2_from_3
    exp1, exp2, exp3 = rand(42), rand(42), rand(42)
    
    res1, res3 = MultipleReturn.new(a: exp1, b: exp2, c: exp3)[:a,:c]

    assert_equal(exp1, res1)
    # assert_equal(exp2, res2)
    assert_equal(exp3, res3)
  end
  
end