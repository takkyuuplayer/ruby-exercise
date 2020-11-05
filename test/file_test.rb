# frozen_string_literal: true

require 'minitest/autorun'

class FileClassTest < Minitest::Test
  def test_extname
    assert_equal File.extname('tmp.pdf'), '.pdf'
    assert_equal File.extname('tmp'), ''
  end
end
