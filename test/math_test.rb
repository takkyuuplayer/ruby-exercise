require 'minitest/autorun'

class MathTest < Minitest::Test
  def test_sqrt
    assert_equal 2, Math.sqrt(4)
  end
end
