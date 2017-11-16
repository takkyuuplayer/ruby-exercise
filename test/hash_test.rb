require "minitest/autorun"

class HashTest < Minitest::Test
  def test_hash
    numbers = {
      "one" => 1,
      "two" => 2,
      "three" => 3,
    }

    assert_equal 1, numbers["one"]

    assert_equal 3, numbers.keys.length

    numbers["four"] = 4

    assert_equal 4, numbers.keys.length
  end
end
