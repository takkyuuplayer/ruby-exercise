require "minitest/autorun"

class NumberTest < Minitest::Test
  def test_float
    assert_equal 2.0 + 2.5, 4.5
    assert_equal 2.0 + 2.6, 4.6
    assert_equal 2.4 + 2.6, 5
  end

  def test_infinite
    assert_equal 1.0/0.0 > 0, true

    assert_equal (1.0/0.0).infinite?, 1
    assert_nil (-1.0).infinite?
    assert_equal (-1.0/0.0).infinite?, -1

    assert_equal (1.0/0.0).finite?, false
    assert_equal (-1.0).finite?, true
    assert_equal (-1.0/0.0).finite?, false
  end
end
