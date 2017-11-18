require "minitest/autorun"

class NumberTest < Minitest::Test
  def test_increment
    counter = 0
  end
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

  def test_comparison
    assert_equal 1 <=> 2, -1
    assert_equal 1 <=> 1, 0
    assert_equal 1 <=> 0, 1
  end

  def test_bignum
     assert_equal 0x3FFFFFFF.class, Integer
     assert_equal (0x3FFFFFFF * 2).class, Integer
  end

  def test_round
    assert_equal 2, (1.5).round
  end

  def test_floor
    assert_equal 1, (1.5).floor
  end

  def test_abs
    assert_equal 1, -1.abs
  end

  def test_max
  end
end
