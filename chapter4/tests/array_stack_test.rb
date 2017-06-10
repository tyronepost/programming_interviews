require_relative '../src/array_stack'
require 'test/unit'

class ArrayStackTest < Test::Unit::TestCase
  def test_array_stack
    stack = ArrayStack.new
    assert_equal 0, stack.size

    stack.push "a"
    assert_equal 1, stack.size

    assert_equal "a",stack.pop
    assert_equal 0, stack.size

    assert_nil stack.pop
  end
end