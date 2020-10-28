require 'minitest/autorun'

class ClosureTest < Minitest::Test
  def create_counter
    count = 0

    proc do
      count += 1
      count
    end
  end

  def test_closure
    counter = create_counter

    assert_equal 1, counter.call
    assert_equal 2, counter.call

    counter2 = create_counter

    assert_equal 1, counter2.call
  end
end
