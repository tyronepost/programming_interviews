
require_relative '../src/linked_list'
require 'test/unit'

class LinkedListTest < Test::Unit::TestCase

  def setup
    @linked_list = LinkedList.new
  end

  def test_constructor
    assert_not_nil @linked_list
    assert_nil @linked_list.head
  end

  def test_insert_in_front
    @linked_list.insert_in_front 1
    assert_equal 1, @linked_list.head.data
    assert_equal 1, @linked_list.size

    @linked_list.insert_in_front 2
    assert_equal 2, @linked_list.head.data
    assert_equal 2, @linked_list.size
  end
end