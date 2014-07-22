require 'test_helper'
require_relative '../lib/vector'

class ExampleTest < MiniTest::Unit::TestCase

  def setup
    # This is ran before all the tests. Useful
    # when preparing input data for the objects/methods you
    # wish to test.
  end

  def test_add_integer_to_vector
    v = MyVector[1, 2]
    assert_equal(Vector[2, 3], v+1)
  end

  def test_shovel_operator
    v = MyVector[1, 2]
    assert_equal(MyVector[1, 2, 3], v << 3)
  end

end
