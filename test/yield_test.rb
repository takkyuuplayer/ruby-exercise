require "minitest/autorun"

def foo
  yield(1, 2)
end

def foo2
  yield 1, 2
end

def expand_array
  yield [1, 2]
end

def yield_more_than_argument
  yield 1, 2, 3
end

def yield_with_array
  yield [1, 2], 3
end

class YieldTest < Minitest::Test
  def test_yield
    sum = foo { |a, b| a + b }

    assert_equal 3, sum

    sum = foo2 { |a, b| a + b }

    assert_equal 3, sum
  end

  def test_expand_array
    sum = expand_array { |a, b| a + b }

    assert_equal 3, sum
  end

  def test_more_than_argument
    sum = yield_more_than_argument { |a, b| a + b }

    assert_equal 3, sum
  end

  def test_with_array
    sum = yield_with_array { |a, b| a[0] + a[1] + b }

    assert_equal 6, sum
  end
end
