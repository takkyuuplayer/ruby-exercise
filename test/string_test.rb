require "minitest/autorun"

class StringTest < Minitest::Test
  def test_sprintf
    assert_equal "2.50000", sprintf("%.5f", 2.5)
    assert_equal "2.40000", sprintf("%.5f", 2.4)
  end

  def test_length
    assert_equal 3, "abc".length
  end

  def test_how_similar
    s = 'happyhacker'
    t = 'happyrank'

    sameIdx = 0
    (0..t.length).each do |idx|
      t[idx] == s[idx] ? sameIdx += 1 : break
    end

    assert_equal 5, sameIdx
  end

  def test_how_similar2
    s = 'happyha'
    t = 'happyrank'

    sameIdx = 0
    (0..t.length).each do |idx|
      t[idx] == s[idx] ? sameIdx += 1 : break
    end

    assert_equal 5, sameIdx
  end
end
