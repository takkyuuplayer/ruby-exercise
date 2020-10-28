# frozen_string_literal: true

require 'minitest/autorun'

class Klass2
  attr_accessor :num

  def initialize(num)
    @num = num
  end
end

class DupCloneTest < Minitest::Test
  def test_clone_will_copy_singular_method_or_frozen_state
    k = Klass2.new(2)

    def k.square
      @num**2
    end
    k.freeze

    assert_equal 4, k.square
    assert_equal true, k.frozen?

    cloned = k.clone

    assert_equal true, cloned.methods.include?(:square)
    assert_equal true, cloned.frozen?
  end

  def test_dup_will_not_copy_singular_method_or_frozen_state
    k = Klass2.new(2)

    def k.square
      @num**2
    end
    k.freeze

    assert_equal true, k.methods.include?(:square)
    assert_equal true, k.frozen?

    duped = k.dup

    assert_equal false, duped.methods.include?(:square)
    assert_equal false, duped.frozen?
  end
end
