# frozen_string_literal: true

require 'minitest/autorun'

class BoolTest < Minitest::Test
  def test_object_id
    assert_equal 0,  false.object_id
    assert_equal 20, true.object_id
  end
end
