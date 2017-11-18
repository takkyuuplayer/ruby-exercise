require "minitest/autorun"

def caseStatement(a0, b0)
  case (a0 <=> b0)
  when -1 then 'a'
  when 0 then 'b'
  when 1 then 'c'
  end
end


class LogicTest < Minitest::Test
  def test_case
    assert_equal 'c', caseStatement(5, 3)
  end
end
