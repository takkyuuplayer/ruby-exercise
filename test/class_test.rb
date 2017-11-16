require "minitest/autorun"

class Point
  @@some = 0

  def initialize(x, y)
    @x = x
    @y = y
  end
  attr_accessor :x, :y

  def distanceFromOrigin
    Math::sqrt(@x*@x + @y * @y)
  end

  def Point.Some(s = nil)
    s.nil? ? @@some : @@some = s
  end
end

class PointTest < Minitest::Test
  def test_instance
    point = Point.new(3, 4)

    assert_equal 3, point.x
    assert_equal 4, point.y

    assert_equal 5, point.distanceFromOrigin
  end
  def test_class
    assert_equal 0, Point.Some

    Point.Some(1)

    assert_equal 1, Point.Some
  end
end
