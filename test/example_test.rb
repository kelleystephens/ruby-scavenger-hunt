require 'test_helper'
require_relative '../lib/vector'
require_relative '../lib/new_integer'

class ExampleTest < MiniTest::Unit::TestCase

  # def setup
    # This is ran before all the tests. Useful
    # when preparing input data for the objects/methods you
    # wish to test.
  # end

=begin
  def test_add_integer_to_vector
    v = MyVector[1, 2]
    assert_equal(Vector[2, 3], v+1)
  end
=end

  def test_shovel_operator
    v = MyVector[1, 2]
    assert_respond_to v, :<<
    assert_equal(MyVector[1, 2, 3], v << 3)
  end

  def test_class_calculates_angle_radians
    v1 = MyVector[1, 2]
    v2 = MyVector[3, 4]
    assert_equal(0.6796106835184006, MyVector.angle(v1, v2))
  end

  def test_instance_calculates_angle_radians
    v1 = MyVector[1, 2]
    v2 = MyVector[3, 4]
    assert_equal(0.6796106835184006, v1.angle(v2))
  end

  def test_factors_in_Integer_class
    assert_equal [2, 3, 4, 6], 12.factors
    assert_equal [2, 4, 5, 10], 20.factors
  end

end
