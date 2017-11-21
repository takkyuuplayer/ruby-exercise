require "minitest/autorun"

class Point
  @@some = 0

  def initialize(x, y)
    @x = x
    @y = y
  end
  attr_accessor :x, :y

  def distanceFromOrigin
    Math::hypot(@x, @y)
  end

  def distance(point = nil)
    if point.nil?
      return Math::hypot(@x, @y)
    end

    return Math::hypot(point.x - @x, point.y - @y)
  end

  def Point.Some(s = nil)
    s.nil? ? @@some : @@some = s
  end
end

class ChildPoint < Point
  def distance(point)
    [super, super(), super(point)]
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

  def test_super
    p1 = ChildPoint.new(3, 4)
    p2 = ChildPoint.new(3, 0)

    distances = p1.distance(p2)

    assert_equal distances[0], 4
    assert_equal distances[1], 5
    assert_equal distances[2], 4
  end
end
