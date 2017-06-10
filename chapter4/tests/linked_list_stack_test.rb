
require_relative '../src/linked_list_stack'
require 'test/unit'

class LinkedListStackTest < Test::Unit::TestCase
  def test_stack
    stack = LinkedListStack.new
    assert_equal 0, stack.size

    stack.push "a"
    stack.push "b"
    stack.push "c"
    assert_equal 3, stack.size

    assert_equal "c", stack.pop
    assert_equal "b", stack.pop
    assert_equal "a", stack.pop
    assert_equal 0, stack.size

    assert_nil stack.pop
    assert_equal 0, stack.size
  end
end