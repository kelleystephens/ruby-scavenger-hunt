require 'test_helper'

class ExampleTest < MiniTest::Unit::TestCase

  def setup
    # This is ran before all the tests. Useful
    # when preparing input data for the objects/methods you
    # wish to test.
  end

  def test_add_integer_to_vector
    v = Vector[1, 2]
    assert_equal(Vector[2, 3], v.add(1))
  end



end
